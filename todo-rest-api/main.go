package main

import (
	"fmt"
	_ "github.com/go-sql-driver/mysql"
	"github.com/gofiber/fiber/v3"
	"todoRestApi/config"
	"todoRestApi/pkg/setting"
	"todoRestApi/service/datasource"
	"todoRestApi/service/datasource/database/userdb"
)

func Setup() {
	if err := setting.Setup(); err != nil {
		panic(err)
	}

	if err := userdb.Userdb.Setup(); err != nil {
		panic(err)
	}
	datasource.UserDataSourceProvider = userdb.Userdb
}

func main() {
	Setup()

	app := fiber.New(*setting.FiberAppConfig)

	config.SetUpRouting(app)

	if err := app.Listen(fmt.Sprintf("%s:%d", setting.ServerSetting.Name, setting.ServerSetting.HttpPort), *setting.FiberListenConfig); err != nil {
		fmt.Println(err)
	}
}
