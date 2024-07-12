package config

import (
	"github.com/gofiber/fiber/v3"
	"todoRestApi/service"
)

func SetUpRouting(app *fiber.App) {

	//user
	app.Post("/user/register", service.RegisterUser)
	app.Post("/user/login", service.LoginUser)
	app.Delete("/user/delete", service.DeleteUser)
	app.Post("/user/edit", service.EditUser)

	//list
	app.Post("/list/new", service.InsertList)
	app.Delete("/list/:id", service.DeleteList)
	app.Get("/list/all", service.GetAllList)
	app.Get("/list/:id", service.GetList)
	app.Post("/list/:id", service.EditList)

	//item
	app.Post("/item/new", service.InsertItem)
	app.Delete("/item/:id", service.DeleteItem)
	app.Post("/item/:id", service.EditItem)

	//comment
	app.Post("/comment/new", service.InsertComment)
	app.Delete("/comment/:id", service.DeleteComment)

	//permission
	app.Post("/permission", service.InsertPermission)
	app.Delete("/permission", service.DeletePermission)
}
