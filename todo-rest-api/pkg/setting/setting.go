package setting

import (
	"github.com/go-ini/ini"
	"log"
)

type App struct {
	PasswordCost int
}

var AppSetting = &App{}

type Server struct {
	Name     string
	HttpPort int
}

var ServerSetting = &Server{}

type Database struct {
	User      string
	Password  string
	Host      string
	TableName string
}

var DatabaseSetting = &Database{}

var config *ini.File

// Setup initialize the configuration instance
func Setup() {
	var err error
	config, err = ini.Load("app.ini")
	if err != nil {
		log.Fatalf("setting.Setup, fail to parse 'app.ini': %v", err)
	}

	mapSectionToStructure("app", AppSetting)
	mapSectionToStructure("server", ServerSetting)
	mapSectionToStructure("database", DatabaseSetting)
}

// mapSectionToStructure
// map a section of the .ini to data structure
func mapSectionToStructure(section string, structure interface{}) {
	err := config.Section(section).MapTo(structure)
	if err != nil {
		log.Fatalf("Could not map ini section %s: %v", section, err)
	}
}
