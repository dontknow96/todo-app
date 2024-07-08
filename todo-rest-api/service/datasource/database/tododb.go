package database

import (
	"database/sql"
	"fmt"
	"time"
	"todoRestApi/model"
	"todoRestApi/pkg/setting"
)

var TodoDb = &Todo{}

type Todo struct {
	dbHandle *sql.DB

	//list
	getListStatement    *sql.Stmt
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
}

type ListDbModel struct {
	Id            int    `json:"id"`
	OwnerId       int    `json:"owner_id"`
	OwnerUsername string `json:"ownerusername"`
	Title         string `json:"title"`
	Description   string `json:"description"`
}

type ItemDbModel struct {
	Id          int       `json:"id"`
	Title       string    `json:"title"`
	Description string    `json:"description"`
	Due         time.Time `json:"due"`
	Done        time.Time `json:"done"`
}

type CommentDbModel struct {
	Id       int       `json:"id"`
	ItemId   int       `json:"itemid"`
	AuthorId int       `json:"authorid"`
	Author   string    `json:"author"`
	Text     string    `json:"text"`
	Time     time.Time `json:"time"`
}

func (todo *Todo) GetList(id int) (model.List, error) {
	retval := model.List{}
	retval.Items = make([]model.Item, 0)

	//get list
	result, err := todo.getListStatement.Query(id)

	if err != nil {
		return model.List{}, err
	}

	retval.ListData, err = GetOneValueFromQuery[model.ListData](result)

	//retrieve items
	var items []model.ItemData
	result, err = todo.getItemStatement.Query(id)

	if err != nil {
		return model.List{}, err
	}

	items, err = GetAllValuesFromQuery[model.ItemData](result)

	//retrieve items
	for _, item := range items {
		var comments []model.Comment

		result, err = todo.getCommentStatement.Query(item.Id)

		if err != nil {
			return model.List{}, err
		}

		comments, err = GetAllValuesFromQuery[model.Comment](result)

		retval.Items = append(retval.Items, model.Item{ItemData: item, Comments: comments})
	}

	return retval, err
}

func (todo *Todo) InsertList(ownerid int, title string, description string) (bool, error) {
	//TODO implement me
	panic("implement me")
}

func (todo *Todo) DeleteList(id int) (bool, error) {
	//TODO implement me
	panic("implement me")
}

func (todo *Todo) EditList(id int, newTitle string, newDescription string) (bool, error) {
	//TODO implement me
	panic("implement me")
}

func (todo *Todo) InsertItem(listId int, title string, description string, due time.Time) (bool, error) {
	//TODO implement me
	panic("implement me")
}

func (todo *Todo) DeleteItem(id int) (bool, error) {
	//TODO implement me
	panic("implement me")
}

func (todo *Todo) EditItem(id int, newTitle string, newDescription string, due time.Time, done time.Time) (bool, error) {
	//TODO implement me
	panic("implement me")
}

func (todo *Todo) InsertComment(itemId int, description string, time time.Time) (bool, error) {
	//TODO implement me
	panic("implement me")
}

func (todo *Todo) DeleteComment(id int) (bool, error) {
	//TODO implement me
	panic("implement me")
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
	todo.getListStatement, err = todo.dbHandle.Prepare("SELECT list.id, list.ownerid, users.username, list.title, list.description  FROM list JOIN users WHERE list.id = ?")
	if err != nil {
		return err
	}

	todo.insertListStatement, err = todo.dbHandle.Prepare("INSERT INTO list(ownerid,title,description) VALUES (?,?,?)")
	if err != nil {
		return err
	}

	todo.deleteListStatement, err = todo.dbHandle.Prepare("DELETE FROM list WHERE id = ?")
	if err != nil {
		return err
	}

	todo.editListStatement, err = todo.dbHandle.Prepare("UPDATE list SET title = ?, description = ? WHERE id = ?")
	if err != nil {
		return err
	}

	//create prepared statements for item
	todo.getItemStatement, err = todo.dbHandle.Prepare("SELECT item.id, item.title, item.description, item.due, item.done FROM item WHERE listid = ?")
	if err != nil {
		return err
	}

	todo.insertItemStatement, err = todo.dbHandle.Prepare("INSERT INTO item(listid,title,description,due) VALUES (?,?,?,?)")
	if err != nil {
		return err
	}

	todo.deleteItemStatement, err = todo.dbHandle.Prepare("DELETE FROM item WHERE id = ?")
	if err != nil {
		return err
	}

	todo.editItemStatement, err = todo.dbHandle.Prepare("UPDATE item SET title = ?, description = ?, due = ?, done = ? WHERE id = ?")
	if err != nil {
		return err
	}

	//create prepared statements for comment
	todo.getCommentStatement, err = todo.dbHandle.Prepare("SELECT comment.id, comment.itemid, comment.authorid, users.username, comment.text, comment.time FROM comment JOIN users WHERE comment.itemid = ?")
	if err != nil {
		return err
	}

	todo.insertCommentStatement, err = todo.dbHandle.Prepare("INSERT INTO comment(itemid,authorid,text,time) VALUES (?,?,?,?)")
	if err != nil {
		return err
	}

	todo.deleteCommentStatement, err = todo.dbHandle.Prepare("DELETE FROM comment WHERE id = ?")
	if err != nil {
		return err
	}

	return nil
}
