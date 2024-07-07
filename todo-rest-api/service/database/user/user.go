package user

import (
	"database/sql"
	"fmt"
	"time"
	"todoRestApi/pkg/setting"
)

var dbHandle *sql.DB

func Setup() error {
	//db, err := sql.Open("mysql", "<username>:<pw>@tcp(<HOST>:<port>)/<dbname>")
	db, err := sql.Open("mysql", fmt.Sprintf("%s:%s@tcp(%s)/%s", setting.DatabaseSetting.DbUser, setting.DatabaseSetting.DbPassword, setting.DatabaseSetting.DbHost, setting.DatabaseSetting.DbDatabaseName))
	if err != nil {
		return err
	}

	//time.seconds for some reason does not work here
	db.SetConnMaxLifetime(time.Duration(setting.DatabaseSetting.DbConnMaxLifetime * 1000))
	db.SetMaxOpenConns(setting.DatabaseSetting.DbMaxOpenConnections)
	db.SetMaxIdleConns(setting.DatabaseSetting.DbMaxIdleConnections)

	if err = db.Ping(); err != nil {
		return err
	}

	dbHandle = db

	return nil
}

func getUser(username string) {

}

func insertUser(username string) {

}

func deleteUser(username string) {

}
