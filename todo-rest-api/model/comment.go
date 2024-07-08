package model

import "time"

type Comment struct {
	Id       int       `json:"id"`
	ItemId   int       `json:"itemid"`
	AuthorId int       `json:"authorid"`
	Author   string    `json:"author"`
	Text     string    `json:"text"`
	Time     time.Time `json:"time"`
}
