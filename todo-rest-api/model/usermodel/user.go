package usermodel

import (
	"golang.org/x/crypto/bcrypt"
	"todoRestApi/pkg/setting"
)

type User struct {
	Id             int
	Username       string
	HashedPassword string
}

func HashPassword(password string) (string, error) {
	bytes, err := bcrypt.GenerateFromPassword([]byte(password), setting.AppSetting.PasswordCost)
	return string(bytes), err
}

func (user User) CheckPassword(password string) bool {
	err := bcrypt.CompareHashAndPassword([]byte(user.HashedPassword), []byte(password))
	return err == nil
}
