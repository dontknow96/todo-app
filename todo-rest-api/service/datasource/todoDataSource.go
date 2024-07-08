package datasource

import (
	"time"
	"todoRestApi/model"
)

var TodoDataSourceProvider TodoDataSource

type TodoDataSource interface {
	Setup() error

	//list
	GetList(id int) (model.List, error)
	InsertList(ownerid int, title string, description string) (bool, error)
	DeleteList(id int) (bool, error)
	EditList(id int, newTitle string, newDescription string) (bool, error)

	//item
	InsertItem(listId int, title string, description string, due time.Time) (bool, error)
	DeleteItem(id int) (bool, error)
	EditItem(id int, newTitle string, newDescription string, due time.Time, done time.Time) (bool, error)

	//comment
	InsertComment(itemId int, description string, time time.Time) (bool, error)
	DeleteComment(id int) (bool, error)
}
