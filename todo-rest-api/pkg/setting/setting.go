package setting

import (
	"errors"
	"os"
	"reflect"
	"strconv"
)

type App struct {
	PasswordCost int
}

var AppSetting = &App{0}

type Server struct {
	Name     string
	HttpPort int
}

var ServerSetting = &Server{"127.0.0.1", 8080}

type Database struct {
	DbUser               string
	DbPassword           string
	DbHost               string
	DbDatabaseName       string
	DbConnMaxLifetime    int
	DbMaxOpenConnections int
	DbMaxIdleConnections int
}

var DatabaseSetting = &Database{"root", "root", "127.0.0.1:3306", "todo", 60, 10, 10}

// Setup initializes the values of the settings
func Setup() error {
	if err := mapEnvironmentToData(AppSetting); err != nil {
		return err
	}
	if err := mapEnvironmentToData(ServerSetting); err != nil {
		return err
	}
	if err := mapEnvironmentToData(DatabaseSetting); err != nil {
		return err
	}

	return nil
}

// mapEnvironmentToData maps the environment data to the settings structs according
// to their field names through reflection
func mapEnvironmentToData(structure interface{}) error {

	description := reflect.Indirect(reflect.ValueOf(structure))

	typ := reflect.TypeOf(structure)
	value := reflect.ValueOf(structure)

	if typ.Kind() == reflect.Ptr {
		typ = typ.Elem()
		value = value.Elem()
	} else {
		return errors.New("can only map Evironment data to a struct")
	}

	for i := 0; i < description.Type().NumField(); i++ {
		//get the value of the environment variable through the fields name
		newValue := os.Getenv(description.Type().Field(i).Name)

		fieldValue := value.Field(i)
		if newValue == "" {
			continue
		}

		//convert the new value according to type and set the field to its value
		if fieldValue.Type().Kind() == reflect.Int {
			converted, err := strconv.Atoi(newValue)
			if err != nil {
				return err
			}
			fieldValue.SetInt(int64(converted))

			continue
		}

		if fieldValue.Type().Kind() == reflect.String {
			fieldValue.SetString(newValue)

			continue
		}

		return errors.New("at least one Type of the struct can not be converted")
	}

	return nil
}
