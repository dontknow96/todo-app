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
	app.Post("/list/new", service.RegisterUser)
	app.Delete("/list", service.LoginUser)
	app.Get("/list", service.GetList)
	app.Post("/list", service.EditUser)

	//item

	//comment
}
