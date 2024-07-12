package service

import (
	"encoding/json"
	"github.com/gofiber/fiber/v3"
	"net/http"
	"todoRestApi/pkg/userjwt"
	"todoRestApi/service/datasource"
)

type PermissionParameter struct {
	ListId   int    `json:"listid"`
	UserId   int    `json:"userid"`
	Username string `json:"username"`
}

func InsertPermission(context fiber.Ctx) error {
	context.Accepts("application/json")

	//retrieve request Data
	params := PermissionParameter{}
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

	//delete data
	id, err := datasource.TodoDataSourceProvider.InsertPermission(params.ListId, params.Username, authUser.Id)
	if err != nil || id == 0 {
		return context.SendStatus(http.StatusBadRequest)
	}

	_ = context.SendStatus(http.StatusOK)
	return context.JSON(id)
}

func DeletePermission(context fiber.Ctx) error {
	//retrieve request Data
	params := PermissionParameter{}
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

	//edit data
	success, err := datasource.TodoDataSourceProvider.DeletePermission(params.ListId, authUser.Id, params.Username)
	if err != nil || !success {
		return context.SendStatus(http.StatusBadRequest)
	}

	return context.SendStatus(http.StatusOK)
}
