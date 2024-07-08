package service

import (
	"encoding/json"
	"github.com/gofiber/fiber/v3"
	"net/http"
	"todoRestApi/pkg/userjwt"
	"todoRestApi/service/datasource"
)

type todoParameter struct {
	Id int `json:"id"`
}

//list

func GetList(context fiber.Ctx) error {
	context.Accepts("application/json")

	//retrieve Data from Body
	params := todoParameter{}

	err := json.Unmarshal(context.Body(), &params)
	if err != nil {
		_ = context.SendStatus(http.StatusBadRequest)
		return context.SendString("Body malformed")
	}

	//check authorization
	authUser, err := userjwt.VerifiedUser(context)
	if err != nil {
		_ = context.SendStatus(http.StatusUnauthorized)
		return context.SendString(err.Error())
	}

	//retrieve data
	list, err := datasource.TodoDataSourceProvider.GetList(params.Id, authUser.Id)
	if err != nil {
		return context.SendStatus(http.StatusBadRequest)
	}

	_ = context.SendStatus(http.StatusOK)
	return context.JSON(list)
}

//GetList(id int, requesterId int) (model.List, error)
//InsertList(ownerid int, title string, description string) (bool, error)
//DeleteList(id int, ownerId int) (bool, error)
//EditList(id int, ownerId int, newTitle string, newDescription string) (bool, error)
//
////item
//InsertItem(listId int, authorid int, title string, description string, due time.Time) (bool, error)
//DeleteItem(id int, userid int) (bool, error)
//EditItem(id int, userid int, newTitle string, newDescription string, due time.Time, done time.Time) (bool, error)
//
////comment
//InsertComment(itemId int, authorid int, description string, time time.Time) (bool, error)
//DeleteComment(id int, authorid int) (bool, error)
