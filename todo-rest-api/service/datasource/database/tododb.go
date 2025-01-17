package database

import (
	"database/sql"
	"errors"
	"fmt"
	"github.com/gofiber/fiber/v3/log"
	"time"
	"todoRestApi/model"
	"todoRestApi/pkg/setting"
)

var TodoDb = &Todo{}

type Todo struct {
	dbHandle *sql.DB

	//list
	getListStatement    *sql.Stmt
	getAllListStatement *sql.Stmt
	insertListStatement *sql.Stmt
	deleteListStatement *sql.Stmt
	editListStatement   *sql.Stmt

	//item
	getItemStatement    *sql.Stmt
	insertItemStatement *sql.Stmt
	deleteItemStatement *sql.Stmt
	editItemStatement   *sql.Stmt

	//comment
	getCommentStatement    *sql.Stmt
	insertCommentStatement *sql.Stmt
	deleteCommentStatement *sql.Stmt

	//permission
	getPermissionStatement    *sql.Stmt
	insertPermissionStatement *sql.Stmt
	deletePermissionStatement *sql.Stmt
}

func (todo *Todo) Setup() error {
	var err error

	//Set up Dabase connection handle and test it
	//db, err := sql.Open("mysql", "<username>:<pw>@tcp(<HOST>:<port>)/<dbname>?parseTime=true")
	todo.dbHandle, err = sql.Open("mysql", fmt.Sprintf("%s:%s@tcp(%s)/%s?parseTime=true", setting.DatabaseSetting.DbUser, setting.DatabaseSetting.DbPassword, setting.DatabaseSetting.DbHost, setting.DatabaseSetting.DbDatabaseName))
	if err != nil {
		return err
	}

	todo.dbHandle.SetConnMaxLifetime(time.Duration(setting.DatabaseSetting.DbConnMaxLifetime) * time.Second)
	todo.dbHandle.SetMaxOpenConns(setting.DatabaseSetting.DbMaxOpenConnections)
	todo.dbHandle.SetMaxIdleConns(setting.DatabaseSetting.DbMaxIdleConnections)

	if err = todo.dbHandle.Ping(); err != nil {
		return err
	}

	//create prepared statements for list
	todo.getListStatement, err = todo.dbHandle.Prepare("SELECT list.id, list.ownerid, users.username, list.title, list.description, list.category  FROM list JOIN users ON list.ownerid = users.id LEFT JOIN permission ON permission.listid = list.id WHERE list.id = ? AND (list.ownerid = ? OR permission.userid = ? )")
	if err != nil {
		return err
	}

	todo.getAllListStatement, err = todo.dbHandle.Prepare("SELECT list.id, list.ownerid, users.username, list.title, list.description, list.category  FROM list JOIN users ON list.ownerid = users.id LEFT JOIN permission ON permission.listid = list.id WHERE (list.ownerid = ? OR permission.userid = ? )")
	if err != nil {
		return err
	}

	todo.insertListStatement, err = todo.dbHandle.Prepare("INSERT INTO list(ownerid,title,description,category) VALUES (?,?,?,?)")
	if err != nil {
		return err
	}

	todo.deleteListStatement, err = todo.dbHandle.Prepare("DELETE FROM list WHERE id = ? AND ownerid = ?")
	if err != nil {
		return err
	}

	todo.editListStatement, err = todo.dbHandle.Prepare("UPDATE list SET title = ?, description = ?, category = ? WHERE id = ? AND ownerid = ?")
	if err != nil {
		return err
	}

	//create prepared statements for item
	todo.getItemStatement, err = todo.dbHandle.Prepare("SELECT item.id, item.title, item.description, item.due, item.done FROM item WHERE listid = ?")
	if err != nil {
		return err
	}

	todo.insertItemStatement, err = todo.dbHandle.Prepare("INSERT INTO item(listid,authorid,title,description,due) SELECT ?,?,?,?,? FROM list LEFT JOIN permission  ON permission.listid = list.id WHERE (list.ownerid = ? OR permission.userid = ?) AND list.id = ?")
	if err != nil {
		return err
	}

	todo.deleteItemStatement, err = todo.dbHandle.Prepare("DELETE item FROM item JOIN list ON item.listid = list.id LEFT JOIN permission ON item.listid = permission.listid  WHERE item.id = ? AND (permission.userid = ? OR list.ownerid = ?)")
	if err != nil {
		return err
	}

	todo.editItemStatement, err = todo.dbHandle.Prepare("update item JOIN list ON item.listid = list.id LEFT JOIN permission ON item.listid = permission.listid SET item.title = ?, item.description = ?, due = ?, done = ? WHERE item.id = ? AND (permission.userid = ? OR list.ownerid = ?)")
	if err != nil {
		return err
	}

	//create prepared statements for comment
	todo.getCommentStatement, err = todo.dbHandle.Prepare("SELECT comment.id, comment.itemid, comment.authorid, users.username, comment.text, comment.time FROM comment JOIN users ON comment.authorid = users.id WHERE comment.itemid = ?")
	if err != nil {
		return err
	}

	todo.insertCommentStatement, err = todo.dbHandle.Prepare("INSERT INTO comment(itemid,authorid,text,time) SELECT ?,?,?,? FROM list LEFT Join item ON list.id = item.listid LEFT JOIN permission on permission.listid = item.listid WHERE (permission.userid = ? OR list.ownerid = ?) AND item.id = ?")
	if err != nil {
		return err
	}

	todo.deleteCommentStatement, err = todo.dbHandle.Prepare("DELETE FROM comment WHERE id = ? AND authorid = ?")
	if err != nil {
		return err
	}

	//create prepared statements for permission
	todo.getPermissionStatement, err = todo.dbHandle.Prepare("SELECT users.id, users.username FROM permission JOIN users ON permission.userid = users.id WHERE permission.listid = ?")
	if err != nil {
		return err
	}

	todo.insertPermissionStatement, err = todo.dbHandle.Prepare("INSERT INTO permission(listid,userid) SELECT ?,(SELECT users.id FROM users WHERE users.username = ?) FROM list WHERE list.ownerid = ? AND list.id = ?")
	if err != nil {
		return err
	}

	todo.deletePermissionStatement, err = todo.dbHandle.Prepare("DELETE permission FROM permission LEFT JOIN list ON permission.listid = list.id WHERE list.id = ? AND list.ownerid = ? AND permission.userid = (SELECT users.id FROM users WHERE users.username = ?)")
	if err != nil {
		return err
	}

	return nil
}

func (todo *Todo) GetList(id int, requesterId int) (model.List, error) {
	retval := model.List{}
	retval.Items = make([]model.Item, 0)

	//get list
	result, err := todo.getListStatement.Query(id, requesterId, requesterId)

	if err != nil {
		return model.List{}, err
	}

	retval.ListData, err = GetOneValueFromQuery[model.ListData](result)
	if err != nil {
		return model.List{}, err
	}

	err = result.Close()
	if err != nil {
		log.Error(err)
		return model.List{}, err
	}

	//retrieve permissions
	result, err = todo.getPermissionStatement.Query(id)
	if err != nil {
		return model.List{}, err
	}

	permissions, err := GetAllValuesFromQuery[model.PermissionData](result)
	err = result.Close()
	if err != nil {
		log.Error(err)
		return model.List{}, err
	}

	retval.Permissions = permissions

	//retrieve items
	result, err = todo.getItemStatement.Query(id)

	if err != nil {
		return model.List{}, err
	}

	items, err := GetAllValuesFromQuery[model.ItemData](result)
	err = result.Close()
	if err != nil {
		log.Error(err)
		return model.List{}, err
	}

	//retrieve comments
	for _, item := range items {
		var comments []model.Comment

		result, err = todo.getCommentStatement.Query(item.Id)

		if err != nil {
			return model.List{}, err
		}

		comments, err = GetAllValuesFromQuery[model.Comment](result)
		err = result.Close()
		if err != nil {
			log.Error(err)
			return model.List{}, err
		}

		retval.Items = append(retval.Items, model.Item{ItemData: item, Comments: comments})
	}

	return retval, err
}

func (todo *Todo) GetAllLists(requesterId int) ([]model.ListData, error) {

	result, err := todo.getAllListStatement.Query(requesterId, requesterId)

	if err != nil {
		log.Error(err)
		return make([]model.ListData, 0), err
	}

	retval, err := GetAllValuesFromQuery[model.ListData](result)
	if err != nil {
		log.Error(err)
		return make([]model.ListData, 0), err
	}

	err = result.Close()
	if err != nil {
		log.Error(err)
		return make([]model.ListData, 0), err
	}

	return retval, nil
}

// List functions
func (todo *Todo) InsertList(ownerid int, title string, description string, category string) (int64, error) {
	result, err := todo.insertListStatement.Exec(ownerid, title, description, category)
	if err != nil {
		log.Error(err)
		return -1, err
	}

	id, err := result.LastInsertId()
	if err != nil {
		log.Error(err)
		return id, err
	}
	if id == 0 {
		log.Error(err)
		return id, errors.New("failed to create")
	}

	return id, err
}

func (todo *Todo) DeleteList(id int, ownerId int) (bool, error) {
	result, err := todo.deleteListStatement.Exec(id, ownerId)
	if err != nil {
		log.Error(err)
		return false, err
	}
	rowsAffected, _ := result.RowsAffected()

	return rowsAffected == 1, err
}

func (todo *Todo) EditList(id int, ownerId int, newTitle string, newDescription string, newCategory string) (bool, error) {
	result, err := todo.editListStatement.Exec(newTitle, newDescription, newCategory, id, ownerId)
	if err != nil {
		log.Error(err)
		return false, err
	}
	rowsAffected, _ := result.RowsAffected()

	return rowsAffected == 1, err
}

// item functions
func (todo *Todo) InsertItem(listId int, authorid int, title string, description string, due time.Time) (int64, error) {
	result, err := todo.insertItemStatement.Exec(listId, authorid, title, description, due, authorid, authorid, listId)
	if err != nil {
		return -1, err
	}

	id, err := result.LastInsertId()
	if err != nil {
		log.Error(err)
		return id, err
	}
	if id == 0 {
		log.Error(err)
		return id, errors.New("failed to create")
	}

	return id, err
}

func (todo *Todo) DeleteItem(id int, userid int) (bool, error) {
	result, err := todo.deleteItemStatement.Exec(id, userid, userid)
	if err != nil {
		log.Error(err)
		return false, err
	}
	rowsAffected, _ := result.RowsAffected()

	return rowsAffected == 1, err
}

func (todo *Todo) EditItem(id int, userid int, newTitle string, newDescription string, due time.Time, done time.Time) (bool, error) {
	result, err := todo.editItemStatement.Exec(newTitle, newDescription, due, done, id, userid, userid)
	if err != nil {
		log.Error(err)
		return false, err
	}
	rowsAffected, _ := result.RowsAffected()

	return rowsAffected == 1, err
}

// comment funcitons
func (todo *Todo) InsertComment(itemId int, authorid int, description string, time time.Time) (int64, error) {
	result, err := todo.insertCommentStatement.Exec(itemId, authorid, description, time, authorid, authorid, itemId)
	if err != nil {
		log.Error(err)
		return -1, err
	}

	id, err := result.LastInsertId()
	if err != nil {
		log.Error(err)
		return id, err
	}
	if id == 0 {
		log.Error(err)
		return id, errors.New("failed to create")
	}

	return id, err
}

func (todo *Todo) DeleteComment(id int, authorid int) (bool, error) {
	result, err := todo.deleteCommentStatement.Exec(id, authorid)
	if err != nil {
		log.Error(err)
		return false, err
	}
	rowsAffected, _ := result.RowsAffected()

	return rowsAffected == 1, err
}

// PermissionData funcitons
func (todo *Todo) InsertPermission(listid int, username string, ownerid int) (int64, error) {
	result, err := todo.insertPermissionStatement.Exec(listid, username, ownerid, listid)
	if err != nil {
		log.Error(err)
		return -1, err
	}

	rowsAffected, err := result.RowsAffected()
	if err != nil {
		log.Error(err)
		return rowsAffected, err
	}
	if rowsAffected == 0 {
		log.Error(err)
		return rowsAffected, errors.New("failed to create")
	}

	return rowsAffected, err
}

func (todo *Todo) DeletePermission(listId int, ownerId int, username string) (bool, error) {
	result, err := todo.deletePermissionStatement.Exec(listId, ownerId, username)
	if err != nil {
		log.Error(err)
		return false, err
	}
	rowsAffected, _ := result.RowsAffected()

	return rowsAffected == 1, err
}
