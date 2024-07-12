package service

import (
	"encoding/json"
	"github.com/gofiber/fiber/v3"
	"net/http"
	"strconv"
	"time"
	"todoRestApi/pkg/userjwt"
	"todoRestApi/service/datasource"
)

type itemParameter struct {
	ItemId      int       `json:"id"`
	ListId      int       `json:"listid"`
	Title       string    `json:"title"`
	Description string    `json:"description"`
	Due         time.Time `json:"due"`
	Done        time.Time `json:"done"`
}

func InsertItem(context fiber.Ctx) error {
	context.Accepts("application/json")

	//retrieve request Data
	params := itemParameter{}
	body := string(context.Body())
	print(body)
	err := json.Unmarshal(context.Body(), &params)
	if err != nil {
		_ = context.SendStatus(http.StatusBadRequest)
		return context.SendString("Body malformed")
	}

	if params.Title == "" || params.Description == "" || params.ListId == 0 {
		return context.SendStatus(http.StatusBadRequest)
	}

	//check authorization
	authUser, err := userjwt.VerifiedUser(context)
	if err != nil {
		_ = context.SendStatus(http.StatusUnauthorized)
		return context.SendString(err.Error())
	}

	//insert data
	id, err := datasource.TodoDataSourceProvider.InsertItem(params.ListId, authUser.Id, params.Title, params.Description, params.Due)
	if err != nil {
		return context.SendStatus(http.StatusBadRequest)
	}

	_ = context.SendStatus(http.StatusOK)
	return context.JSON(id)
}

func DeleteItem(context fiber.Ctx) error {
	//retrieve request Data
	params := itemParameter{}
	id, err := strconv.Atoi(context.Params("id", ""))
	if err != nil {
		return context.SendStatus(http.StatusBadRequest)
	}
	params.ItemId = id

	//check authorization
	authUser, err := userjwt.VerifiedUser(context)
	if err != nil {
		_ = context.SendStatus(http.StatusUnauthorized)
		return context.SendString(err.Error())
	}

	//delete data
	success, err := datasource.TodoDataSourceProvider.DeleteItem(params.ItemId, authUser.Id)
	if err != nil || !success {
		return context.SendStatus(http.StatusBadRequest)
	}

	return context.SendStatus(http.StatusOK)
}

func EditItem(context fiber.Ctx) error {
	context.Accepts("application/json")

	//retrieve request Data
	params := itemParameter{}
	id, err := strconv.Atoi(context.Params("id", ""))
	if err != nil {
		return context.SendStatus(http.StatusBadRequest)
	}
	params.ItemId = id

	err = json.Unmarshal(context.Body(), &params)
	if err != nil {
		_ = context.SendStatus(http.StatusBadRequest)
		return context.SendString("Body malformed")
	}

	if params.Title == "" || params.Description == "" {
		return context.SendStatus(http.StatusBadRequest)
	}

	//check authorization
	authUser, err := userjwt.VerifiedUser(context)
	if err != nil {
		_ = context.SendStatus(http.StatusUnauthorized)
		return context.SendString(err.Error())
	}

	//edit data
	_, err = datasource.TodoDataSourceProvider.EditItem(params.ItemId, authUser.Id, params.Title, params.Description, params.Due, params.Done)
	if err != nil {
		return context.SendStatus(http.StatusBadRequest)
	}

	return context.SendStatus(http.StatusOK)
}
