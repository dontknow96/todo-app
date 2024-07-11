package service

//
//import (
//	"encoding/json"
//	"github.com/gofiber/fiber/v3"
//	"net/http"
//	"strconv"
//	"time"
//	"todoRestApi/model"
//	"todoRestApi/pkg/userjwt"
//	"todoRestApi/service/datasource"
//)
//
//func InsertPermission(context fiber.Ctx) error {
//	context.Accepts("application/json")
//
//	//retrieve request Data
//	params := model.Permission{}
//	err := json.Unmarshal(context.Body(), &params)
//	if err != nil {
//		_ = context.SendStatus(http.StatusBadRequest)
//		return context.SendString("Body malformed")
//	}
//
//	//check authorization
//	authUser, err := userjwt.VerifiedUser(context)
//	if err != nil {
//		_ = context.SendStatus(http.StatusUnauthorized)
//		return context.SendString(err.Error())
//	}
//
//	//delete data
//	id, err := datasource.TodoDataSourceProvider.InsertComment(params.ItemId, authUser.Id, params.Text, time.Now())
//	if err != nil || id == 0 {
//		return context.SendStatus(http.StatusBadRequest)
//	}
//
//	_ = context.SendStatus(http.StatusOK)
//	return context.JSON(id)
//}
//
//func DeletePermission(context fiber.Ctx) error {
//	//retrieve request Data
//	params := commentParameter{}
//	id, err := strconv.Atoi(context.Params("id", ""))
//	if err != nil {
//		return context.SendStatus(http.StatusBadRequest)
//	}
//	params.CommentId = id
//
//	//check authorization
//	authUser, err := userjwt.VerifiedUser(context)
//	if err != nil {
//		_ = context.SendStatus(http.StatusUnauthorized)
//		return context.SendString(err.Error())
//	}
//
//	//edit data
//	success, err := datasource.TodoDataSourceProvider.DeleteComment(params.CommentId, authUser.Id)
//	if err != nil || !success {
//		return context.SendStatus(http.StatusBadRequest)
//	}
//
//	return context.SendStatus(http.StatusOK)
//}
