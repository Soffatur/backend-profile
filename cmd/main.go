package main

import (
	"fmt"
	"go-profile/internal/config"
	"go-profile/internal/db"
	"log"
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	// configuration config
	config, err := config.LoadConfig()
	if err != nil {
		log.Fatal("Cannot load config")
		return
	}

	dsn := fmt.Sprintf("host=%v user=%v password=%v dbname=%v port=%v sslmode=disable TimeZone=Asia/Shanghai", config.DBDriver, config.DBUser, config.DBPass, config.DBName, config.DBPort)

	DB, err := db.NewPostgreSQLGORM(dsn)
	if err != nil {
		log.Fatal("Cannot connect to db:", err)
	}

	fmt.Println(DB)

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
