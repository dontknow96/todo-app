package config

import "github.com/gofiber/fiber/v3"

func SetUpRouting(app *fiber.App) {
	app.Get("/", func(c fiber.Ctx) error {
		return c.SendString("Hello, World!")
	})
}
