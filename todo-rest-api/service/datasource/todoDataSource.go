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
	DeleteList(id int, ownerId int) (bool, error)
	EditList(id int, newTitle string, newDescription string) (bool, error)

	//item
	InsertItem(listId int, authorid int, title string, description string, due time.Time) (bool, error)
	DeleteItem(id int, userid int) (bool, error)
	EditItem(id int, userid int, newTitle string, newDescription string, due time.Time, done time.Time) (bool, error)

	//comment
	InsertComment(itemId int, authorid int, description string, time time.Time) (bool, error)
	DeleteComment(id int, authorid int) (bool, error)
}
