package database

import (
	"database/sql"
	"fmt"
	"github.com/gofiber/fiber/v3/log"
	"time"
	"todoRestApi/model"
	"todoRestApi/pkg/setting"
)

var UserDb = &User{}

type User struct {
	dbHandle *sql.DB

	getUserStatement    *sql.Stmt
	insertUserStatement *sql.Stmt
	deleteUserStatement *sql.Stmt
	editUserStatement   *sql.Stmt
}

func (user *User) Setup() error {
	var err error

	//Set up Dabase connection handle and test it
	//db, err := sql.Open("mysql", "<username>:<pw>@tcp(<HOST>:<port>)/<dbname>")
	user.dbHandle, err = sql.Open("mysql", fmt.Sprintf("%s:%s@tcp(%s)/%s", setting.DatabaseSetting.DbUser, setting.DatabaseSetting.DbPassword, setting.DatabaseSetting.DbHost, setting.DatabaseSetting.DbDatabaseName))
	if err != nil {
		return err
	}

	user.dbHandle.SetConnMaxLifetime(time.Duration(setting.DatabaseSetting.DbConnMaxLifetime) * time.Second)
	user.dbHandle.SetMaxOpenConns(setting.DatabaseSetting.DbMaxOpenConnections)
	user.dbHandle.SetMaxIdleConns(setting.DatabaseSetting.DbMaxIdleConnections)

	if err = user.dbHandle.Ping(); err != nil {
		return err
	}

	//create prepared statements
	user.getUserStatement, err = user.dbHandle.Prepare("SELECT * FROM users WHERE username = ?")
	if err != nil {
		return err
	}

	user.insertUserStatement, err = user.dbHandle.Prepare("INSERT INTO users(username,password) VALUES (?,?)")
	if err != nil {
		return err
	}

	user.deleteUserStatement, err = user.dbHandle.Prepare("DELETE FROM users WHERE username = ?")
	if err != nil {
		return err
	}

	user.editUserStatement, err = user.dbHandle.Prepare("UPDATE users SET password = ? WHERE username = ?")
	if err != nil {
		return err
	}

	return nil
}

func (user *User) GetUser(username string) (model.User, error) {
	retval := model.User{}
	result, err := user.getUserStatement.Query(username)
	if err != nil {
		return retval, err
	}

	retval, err = GetOneValueFromQuery[model.User](result)

	err = result.Close()
	if err != nil {
		log.Error(err)
		return model.User{}, err
	}

	return retval, err
}

func (user *User) InsertUser(username string, password string) (bool, error) {
	result, err := user.insertUserStatement.Exec(username, password)
	if err != nil {
		return false, err
	}
	rowsAffected, _ := result.RowsAffected()

	return rowsAffected == 1, err
}

func (user *User) DeleteUser(username string) (bool, error) {
	result, err := user.deleteUserStatement.Exec(username)

	if err != nil {
		return false, err
	}
	rowsAffected, _ := result.RowsAffected()

	return rowsAffected == 1, err
}

func (user *User) EditUser(username string, newPassword string) (bool, error) {
	result, err := user.editUserStatement.Exec(newPassword, username)
	if err != nil {
		return false, err
	}
	rowsAffected, _ := result.RowsAffected()

	return rowsAffected == 1, err

}
