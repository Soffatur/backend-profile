package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()

	api := r.Group("api/v1")
	{
		user := api.Group("user")
		{
			user.GET("/", func(ctx *gin.Context) {
				ctx.JSON(http.StatusOK, gin.H{"message": "oke"})
			})
		}
	}

	_ = r.Run(":8000")
}
