package service

import (
	"encoding/json"
	"github.com/gofiber/fiber/v3"
	"net/http"
	"strconv"
	"todoRestApi/pkg/userjwt"
	"todoRestApi/service/datasource"
)

type listParameter struct {
	ListId      int    `json:"id"`
	Title       string `json:"title"`
	Description string `json:"description"`
}

// list
func GetList(context fiber.Ctx) error {
	context.Accepts("application/json")

	//retrieve request Data
	params := listParameter{}
	id, err := strconv.Atoi(context.Params("id", ""))
	if err != nil {
		return context.SendStatus(http.StatusBadRequest)
	}
	params.ListId = id

	if err = json.Unmarshal(context.Body(), &params); err != nil {
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
	list, err := datasource.TodoDataSourceProvider.GetList(params.ListId, authUser.Id)
	if err != nil {
		return context.SendStatus(http.StatusNotFound)
	}

	_ = context.SendStatus(http.StatusOK)
	return context.JSON(list)
}
func GetAllList(context fiber.Ctx) error {
	//check authorization
	authUser, err := userjwt.VerifiedUser(context)
	if err != nil {
		_ = context.SendStatus(http.StatusUnauthorized)
		return context.SendString(err.Error())
	}

	//retrieve data
	list, err := datasource.TodoDataSourceProvider.GetAllLists(authUser.Id)
	if err != nil {
		return context.SendStatus(http.StatusNotFound)
	}

	_ = context.SendStatus(http.StatusOK)
	return context.JSON(list)
}

func InsertList(context fiber.Ctx) error {
	context.Accepts("application/json")

	//retrieve request Data
	params := listParameter{}

	err := json.Unmarshal(context.Body(), &params)
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

	//insert data
	id, err := datasource.TodoDataSourceProvider.InsertList(authUser.Id, params.Title, params.Description)
	if err != nil {
		return context.SendStatus(http.StatusBadRequest)
	}

	_ = context.SendStatus(http.StatusOK)
	return context.JSON(id)
}

func DeleteList(context fiber.Ctx) error {
	context.Accepts("application/json")

	//retrieve request Data
	params := listParameter{}
	id, err := strconv.Atoi(context.Params("id", ""))
	if err != nil {
		return context.SendStatus(http.StatusBadRequest)
	}
	params.ListId = id

	err = json.Unmarshal(context.Body(), &params)
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

	//delete data
	_, err = datasource.TodoDataSourceProvider.DeleteList(params.ListId, authUser.Id)
	if err != nil {
		return context.SendStatus(http.StatusBadRequest)
	}

	return context.SendStatus(http.StatusOK)
}

func EditList(context fiber.Ctx) error {
	context.Accepts("application/json")

	//retrieve request Data
	params := listParameter{}
	id, err := strconv.Atoi(context.Params("id", ""))
	if err != nil {
		return context.SendStatus(http.StatusBadRequest)
	}
	params.ListId = id

	if params.Title == "" || params.Description == "" {
		return context.SendStatus(http.StatusBadRequest)
	}

	err = json.Unmarshal(context.Body(), &params)
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

	//edit data
	_, err = datasource.TodoDataSourceProvider.EditList(params.ListId, authUser.Id, params.Title, params.Description)
	if err != nil {
		return context.SendStatus(http.StatusBadRequest)
	}

	return context.SendStatus(http.StatusOK)
}
