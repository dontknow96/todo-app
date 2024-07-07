package userdb

import (
	"database/sql"
	"fmt"
	"time"
	"todoRestApi/model/usermodel"
	"todoRestApi/pkg/setting"
	"todoRestApi/service/database"
)

var dbHandle *sql.DB

var getUserStatement *sql.Stmt
var insertUserStatement *sql.Stmt
var deleteUserStatement *sql.Stmt
var editUserStatement *sql.Stmt

func Setup() error {
	var err error

	//Set up Dabase connection handle and test it
	//db, err := sql.Open("mysql", "<username>:<pw>@tcp(<HOST>:<port>)/<dbname>")
	dbHandle, err = sql.Open("mysql", fmt.Sprintf("%s:%s@tcp(%s)/%s", setting.DatabaseSetting.DbUser, setting.DatabaseSetting.DbPassword, setting.DatabaseSetting.DbHost, setting.DatabaseSetting.DbDatabaseName))
	if err != nil {
		return err
	}

	//time.seconds for some reason does not work here
	dbHandle.SetConnMaxLifetime(time.Duration(setting.DatabaseSetting.DbConnMaxLifetime * 1000))
	dbHandle.SetMaxOpenConns(setting.DatabaseSetting.DbMaxOpenConnections)
	dbHandle.SetMaxIdleConns(setting.DatabaseSetting.DbMaxIdleConnections)

	if err = dbHandle.Ping(); err != nil {
		return err
	}

	//create prepared statements
	getUserStatement, err = dbHandle.Prepare("SELECT * FROM users WHERE username = ?")
	if err != nil {
		return err
	}

	insertUserStatement, err = dbHandle.Prepare("INSERT INTO users(username,password) VALUES (?,?)")
	if err != nil {
		return err
	}

	deleteUserStatement, err = dbHandle.Prepare("DELETE FROM users WHERE username = ?")
	if err != nil {
		return err
	}

	editUserStatement, err = dbHandle.Prepare("UPDATE users SET password = ? WHERE username = ?")
	if err != nil {
		return err
	}

	return nil
}

func GetUser(username string) (usermodel.User, error) {
	retval := usermodel.User{}
	result, err := getUserStatement.Query(username)

	if err != nil {
		return retval, err
	}

	retval, err = database.GetOneValueFromQuery[usermodel.User](result)

	return retval, err
}

func InsertUser(username string, password string) (bool, error) {
	result, err := insertUserStatement.Exec(username, password)
	if err != nil {
		return false, err
	}
	rowsAffected, _ := result.RowsAffected()

	return rowsAffected == 1, err
}

func DeleteUser(username string) (bool, error) {
	result, err := deleteUserStatement.Exec(username)
	if err != nil {
		return false, err
	}
	rowsAffected, _ := result.RowsAffected()

	return rowsAffected == 1, err
}

func EditUser(username string, newPassword string) (bool, error) {
	result, err := editUserStatement.Exec(newPassword, username)
	if err != nil {
		return false, err
	}
	rowsAffected, _ := result.RowsAffected()

	return rowsAffected == 1, err

}
