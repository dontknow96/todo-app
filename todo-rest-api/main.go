package main

import (
	"fmt"
	_ "github.com/go-sql-driver/mysql"
	"github.com/gofiber/fiber/v3"
	"github.com/gofiber/fiber/v3/middleware/cors"
	"todoRestApi/config"
	"todoRestApi/pkg/setting"
	"todoRestApi/service/datasource"
	"todoRestApi/service/datasource/database"
)

func setup() {
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
	setup()

	app := fiber.New(*setting.FiberAppConfig)

	app.Use(cors.New(cors.Config{
		AllowOrigins: []string{"*"},
	}))

	config.SetUpRouting(app)

	if err := app.Listen(fmt.Sprintf(":%d", setting.ServerSetting.HttpPort), *setting.FiberListenConfig); err != nil {
		fmt.Println(err)
	}
}
