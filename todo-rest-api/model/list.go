package model

type ListData struct {
	Id            int    `json:"id"`
	OwnerId       int    `json:"ownerid"`
	OwnerUsername string `json:"ownerusername"`
	Title         string `json:"title"`
	Description   string `json:"description"`
}

type List struct {
	ListData ListData `json:"data"`
	Items    []Item   `json:"items"`
}
