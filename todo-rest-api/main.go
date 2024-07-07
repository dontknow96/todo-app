package main

import (
	"fmt"
	_ "github.com/go-sql-driver/mysql"
	"github.com/gofiber/fiber/v3"
	"todoRestApi/config"
	"todoRestApi/pkg/setting"
	"todoRestApi/service/database/userdb"
)

func Setup() {
	if err := setting.Setup(); err != nil {
		panic(err)
	}
	if err := userdb.Setup(); err != nil {
		panic(err)
	}
}

func main() {
	Setup()

	app := fiber.New()

	config.SetUpRouting(app)

	if err := app.Listen(fmt.Sprintf("%s:%d", setting.ServerSetting.Name, setting.ServerSetting.HttpPort)); err != nil {
		fmt.Println(err)
	}
}
