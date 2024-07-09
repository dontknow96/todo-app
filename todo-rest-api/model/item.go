package model

import "time"

type Item struct {
	ItemData ItemData  `json:"itemdata"`
	Comments []Comment `json:"comments"`
}

type ItemData struct {
	Id          int       `json:"id"`
	Title       string    `json:"title"`
	Description string    `json:"description"`
	Due         time.Time `json:"due"`
	Done        time.Time `json:"done"`
}
