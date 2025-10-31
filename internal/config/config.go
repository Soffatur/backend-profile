package config

import "github.com/spf13/viper"

type Config struct {
	ListenPort string
	DBDriver   string
	DBPort     string
	DBName     string
	DBUser     string
	DBPass     string
}

func LoadConfig() (*Config, error) {
	viper.SetConfigFile(".env")
	viper.AutomaticEnv()

	err := viper.ReadInConfig()
	if err != nil {
		panic(err)
	}

	return &Config{
		ListenPort: viper.GetString("LISTEN_PORT"),
		DBDriver:   viper.GetString("DB_DRIVER"),
		DBPort:     viper.GetString("DB_PORT"),
		DBName:     viper.GetString("DB_NAME"),
		DBUser:     viper.GetString("DB_USER"),
		DBPass:     viper.GetString("DB_PASSWORD"),
	}, nil
}
