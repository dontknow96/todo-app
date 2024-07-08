package config

import (
	"github.com/gofiber/fiber/v3"
	"todoRestApi/service/userService"
)

func SetUpRouting(app *fiber.App) {

	//user
	app.Post("/user/register", userService.RegisterUser)
	app.Post("/user/login", userService.LoginUser)
	app.Delete("/user/delete", userService.DeleteUser)
	app.Post("/user/edit", userService.EditUser)

	//list
	app.Post("/list/new", userService.RegisterUser)
	app.Delete("/list/:id", userService.LoginUser)
	app.Get("/list/:id", userService.EditUser)
	app.Post("/list/:id", userService.EditUser)

	//item

	//comment
}
