package main

import (
	"fmt"
	_ "github.com/go-sql-driver/mysql"
	"github.com/gofiber/fiber/v3"
	"todoRestApi/config"
	"todoRestApi/pkg/setting"
	"todoRestApi/service/datasource"
	"todoRestApi/service/datasource/database"
)

func Setup() {
	if err := setting.Setup(); err != nil {
		panic(err)
	}

	if err := database.UserDb.Setup(); err != nil {
		panic(err)
	}
	datasource.UserDataSourceProvider = database.UserDb

	if err := database.TodoDb.Setup(); err != nil {
		panic(err)
	}
	datasource.TodoDataSourceProvider = database.TodoDb
}

func main() {
	Setup()

	app := fiber.New(*setting.FiberAppConfig)

	config.SetUpRouting(app)

	tmp, _ := datasource.TodoDataSourceProvider.GetList(1)
	fmt.Println(tmp)

	if err := app.Listen(fmt.Sprintf("%s:%d", setting.ServerSetting.Name, setting.ServerSetting.HttpPort), *setting.FiberListenConfig); err != nil {
		fmt.Println(err)
	}
}
