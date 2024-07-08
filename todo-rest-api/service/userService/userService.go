package userService

import (
	"encoding/json"
	"github.com/gofiber/fiber/v3"
	"github.com/gofiber/fiber/v3/log"
	"net/http"
	"strings"
	"todoRestApi/model"
	"todoRestApi/pkg/userjwt"
	"todoRestApi/service/datasource"
)

type userParameter struct {
	Username    string `json:"username"`
	Password    string `json:"password"`
	NewPassword string `json:"newpassword"`
}

type loginAnswer struct {
	Token      string `json:"token"`
	ValidUntil int64  `json:"validUntil"`
}

func LoginUser(context fiber.Ctx) error {
	context.Accepts("application/json")

	//retrieve Data from Body
	params := userParameter{}

	err := json.Unmarshal(context.Body(), &params)
	if err != nil {
		_ = context.SendStatus(http.StatusBadRequest)
		return context.SendString("Body malformed")
	}

	//retrieve User
	user, err := datasource.UserDataSourceProvider.GetUser(params.Username)
	if err != nil {
		_ = context.SendStatus(http.StatusBadRequest)
		return context.SendString("User not found or wrong credentials")
	}

	//check password
	if !user.CheckPassword(params.Password) {
		_ = context.SendStatus(http.StatusBadRequest)
		return context.SendString("User not found or wrong credentials")

	}

	//create token
	username, validUntil, err := userjwt.CreateTokenForUsername(user.Username)
	if err != nil {
		_ = context.SendStatus(http.StatusInternalServerError)
		log.Error("Token creation after login failed", err)
		return context.SendString("Something went wrong")
	}

	loginAnswer := loginAnswer{username, validUntil}

	retBody, err := json.Marshal(loginAnswer)
	if err != nil {
		return err
	}

	_ = context.SendStatus(http.StatusOK)

	return context.SendString(string(retBody))
}

func RegisterUser(context fiber.Ctx) error {
	context.Accepts("application/json")

	params := userParameter{}

	err := json.Unmarshal(context.Body(), &params)
	if err != nil {
		_ = context.SendStatus(http.StatusBadRequest)
		return context.SendString("Body malformed")
	}

	//check if user already exists
	if user, _ := datasource.UserDataSourceProvider.GetUser(params.Username); user.Username != "" {
		_ = context.SendStatus(http.StatusConflict)
		return context.SendString("user already exists")
	}

	//insert new user with hashed Password
	hashedPassword, _ := model.HashPassword(params.Password)
	success, err := datasource.UserDataSourceProvider.InsertUser(params.Username, hashedPassword)
	if success == false {
		return err
	}

	_ = context.SendStatus(http.StatusOK)

	return context.SendString("Success")
}

func DeleteUser(context fiber.Ctx) error {
	context.Accepts("application/json")

	//retrieve Data from Body
	params := userParameter{}

	err := json.Unmarshal(context.Body(), &params)
	if err != nil {
		_ = context.SendStatus(http.StatusBadRequest)
		return context.SendString("Body malformed")
	}

	//retrieve User
	user, err := datasource.UserDataSourceProvider.GetUser(params.Username)
	if err != nil {
		_ = context.SendStatus(http.StatusBadRequest)
		return context.SendString("User not found or wrong credentials")
	}

	//check password
	if !user.CheckPassword(params.Password) {
		_ = context.SendStatus(http.StatusBadRequest)
		return context.SendString("User not found or wrong credentials")
	}

	//check authorization
	header := context.GetReqHeaders()

	authUser, err := userjwt.VerifyUser(strings.Split(header["Authorization"][0], " ")[1])
	if err != nil {
		return err
	}

	if authUser.Id != user.Id {
		_ = context.SendStatus(http.StatusBadRequest)
		return context.SendString("User not found or wrong credentials")
	}

	//delete user
	success, err := datasource.UserDataSourceProvider.DeleteUser(params.Username)
	if !success {
		_ = context.SendStatus(http.StatusInternalServerError)
		log.Error("Delete user failed", err)
		return context.SendString("Something went wrong")
	}

	_ = context.SendStatus(http.StatusOK)

	return context.SendString("Success")

}

func EditUser(context fiber.Ctx) error {
	context.Accepts("application/json")

	//retrieve Data from Body
	params := userParameter{}

	err := json.Unmarshal(context.Body(), &params)
	if err != nil {
		_ = context.SendStatus(http.StatusBadRequest)
		return context.SendString("Body malformed")
	}

	//retrieve User
	user, err := datasource.UserDataSourceProvider.GetUser(params.Username)
	if err != nil {
		_ = context.SendStatus(http.StatusBadRequest)
		return context.SendString("User not found or wrong credentials")
	}

	//check password
	if !user.CheckPassword(params.Password) {
		_ = context.SendStatus(http.StatusBadRequest)
		return context.SendString("User not found or wrong credentials")

	}

	hashedNewPassword, _ := model.HashPassword(params.NewPassword)

	//check authorization
	header := context.GetReqHeaders()

	authUser, err := userjwt.VerifyUser(strings.Split(header["Authorization"][0], " ")[1])
	if err != nil {
		return err
	}

	if authUser.Id != user.Id {
		_ = context.SendStatus(http.StatusBadRequest)
		return context.SendString("User not found or wrong credentials")
	}

	//change password of user
	success, err := datasource.UserDataSourceProvider.EditUser(params.Username, hashedNewPassword)
	if !success {
		_ = context.SendStatus(http.StatusInternalServerError)
		log.Error("Delete user failed", err)
		return context.SendString("Something went wrong")
	}

	_ = context.SendStatus(http.StatusOK)
	return context.SendString("Success")
}
