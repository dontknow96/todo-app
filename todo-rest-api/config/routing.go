package config

import (
	"github.com/gofiber/fiber/v3"
	"todoRestApi/service/userService"
)

func SetUpRouting(app *fiber.App) {
	app.Post("/user/register", userService.RegisterUser)
	app.Post("/user/login", userService.LoginUser)
	app.Post("/user/delete", userService.DeleteUser)
	app.Post("/user/edit", userService.EditUser)
}
