package model

type ListData struct {
	Id            int    `json:"id"`
	OwnerId       int    `json:"owner_id"`
	OwnerUsername string `json:"ownerusername"`
	Title         string `json:"title"`
	Description   string `json:"description"`
}

type List struct {
	ListData ListData `json:"data"`
	Items    []Item   `json:"items"`
}
