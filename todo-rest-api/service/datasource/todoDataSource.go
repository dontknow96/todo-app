package datasource

import (
	"time"
	"todoRestApi/model"
)

var TodoDataSourceProvider TodoDataSource

type TodoDataSource interface {
	Setup() error

	//list
	GetList(id int, requesterId int) (model.List, error)
	InsertList(ownerid int, title string, description string) (int64, error)
	DeleteList(id int, ownerId int) (bool, error)
	EditList(id int, ownerId int, newTitle string, newDescription string) (bool, error)

	//item
	InsertItem(listId int, authorid int, title string, description string, due time.Time) (int64, error)
	DeleteItem(id int, userid int) (bool, error)
	EditItem(id int, userid int, newTitle string, newDescription string, due time.Time, done time.Time) (bool, error)

	//comment
	InsertComment(itemId int, authorid int, description string, time time.Time) (int64, error)
	DeleteComment(id int, authorid int) (bool, error)
}
