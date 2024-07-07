package userjwt

import (
	"fmt"
	"github.com/golang-jwt/jwt/v5"
	"time"
	"todoRestApi/model/usermodel"
	"todoRestApi/pkg/setting"
	"todoRestApi/service/datasource"
)

func CreateTokenForUsername(username string) (string, int64, error) {
	exp := time.Now().Add(time.Duration(setting.AppSetting.JwtExpiration) * time.Second).Unix()

	token := jwt.NewWithClaims(jwt.SigningMethodHS256,
		jwt.MapClaims{
			"aud": username,
			"exp": exp,
		})

	tokenString, err := token.SignedString([]byte(setting.AppSetting.JwtSecret))
	if err != nil {
		return "", 0, err
	}

	return tokenString, exp, nil
}

func VerifyUser(tokenString string) (usermodel.User, error) {
	retVal := usermodel.User{}

	token, err := jwt.Parse(tokenString, func(token *jwt.Token) (interface{}, error) {
		return []byte(setting.AppSetting.JwtSecret), nil
	})

	if err != nil {
		return retVal, err
	}

	if !token.Valid {
		return retVal, fmt.Errorf("invalid token")
	}

	aud, err := token.Claims.GetAudience()

	if err != nil {
		return retVal, err
	}

	retVal, err = datasource.UserDataSourceProvider.GetUser(aud[0])
	if err != nil {
		return retVal, err
	}

	return retVal, nil
}
