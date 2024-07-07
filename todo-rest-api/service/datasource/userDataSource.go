package datasource

import "todoRestApi/model/usermodel"

var UserDataSourceProvider UserDataSource

type UserDataSource interface {
	Setup() error
	GetUser(username string) (usermodel.User, error)
	InsertUser(username string, password string) (bool, error)
	DeleteUser(username string) (bool, error)
	EditUser(username string, newPassword string) (bool, error)
}
