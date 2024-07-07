package main

import (
	"fmt"
	"github.com/gofiber/fiber/v3"
	"todoRestApi/config"
	"todoRestApi/pkg/setting"
)

func main() {

	setting.Setup()

	app := fiber.New()

	config.SetUpRouting(app)

	if err := app.Listen(fmt.Sprintf("%s:%d", setting.ServerSetting.Name, setting.ServerSetting.HttpPort)); err != nil {
		fmt.Println(err)
	}
}
