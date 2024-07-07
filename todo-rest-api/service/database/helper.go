package database

import (
	"database/sql"
	"errors"
	"reflect"
)

// GetOneValueFromQuery extracts the first value set from the query and tries to place them in an instance of the
// provided type
func GetOneValueFromQuery[T any](rows *sql.Rows) (T, error) {
	var element T

	if !rows.Next() {
		return element, errors.New("no rows found")
	}

	value := reflect.ValueOf(&element).Elem()
	numCols := value.NumField()
	columns := make([]interface{}, numCols)
	for i := 0; i < numCols; i++ {
		field := value.Field(i)
		columns[i] = field.Addr().Interface()
	}

	err := rows.Scan(columns...)
	if err != nil {
		return element, err
	}

	return element, nil
}

// GetAllValuesFromQuery extracts the all value sets from the query and tries to place them in an a slice of instances
// of the provided type
func GetAllValuesFromQuery[T any](rows *sql.Rows) ([]T, error) {
	elementCounter := 0
	var retvals []T

	for rows.Next() {
		var element T

		value := reflect.ValueOf(&element).Elem()
		numCols := value.NumField()
		columns := make([]interface{}, numCols)
		for i := 0; i < numCols; i++ {
			field := value.Field(i)
			columns[i] = field.Addr().Interface()
		}

		err := rows.Scan(columns...)
		if err != nil {
			return retvals, err
		}

		retvals = append(retvals, element)

		elementCounter++
	}

	return retvals, nil
}
