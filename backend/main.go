package main

import (
	"io/ioutil"
	"log"
	"net/http"
	"os"
	"strconv"
	"time"

	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/middleware/cache"
	"github.com/gofiber/fiber/v2/middleware/cors"
)

func main() {
	app := fiber.New()

	// Default config
	app.Use(cors.New())

	//Cache
	app.Use(cache.New(cache.Config{
		ExpirationGenerator: func(c *fiber.Ctx, cfg *cache.Config) time.Duration {
			newCacheTime, _ := strconv.Atoi(c.GetRespHeader("Cache-Time", "10"))
			return time.Second * time.Duration(newCacheTime)
		},
		KeyGenerator: func(c *fiber.Ctx) string {
			return c.Path()
		},
	}))

	// Or extend your config for customization
	app.Use(cors.New(cors.Config{
		AllowOrigins: "*",
		AllowHeaders: "Origin, Content-Type, Accept",
	}))

	app.Get("/saliny/:stopId", func(c *fiber.Ctx) error {
		c.Response().Header.Add("Cache-Time", "10")

		stopId := c.Params("stopId")
		resp, err := http.Get("https://mapa.idsjmk.cz/api/Departures?stopid=" + stopId)
		if err != nil {
			log.Fatalln(err)
		}

		return c.SendString(convertBody(resp))

	})
	app.Get("/stops", func(c *fiber.Ctx) error {
		c.Response().Header.Add("Cache-Time", "12000")
		resp, err := http.Get("https://mapa.idsjmk.cz/api/stops.json")
		if err != nil {
			log.Fatalln(err)
		}

		return c.SendString(convertBody(resp))
	})
	app.Get("/", func(c *fiber.Ctx) error {

		return c.SendString("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA")
	})

	port := os.Getenv("PORT")
	log.Fatal(app.Listen("0.0.0.0:" + port))
}
func convertBody(resp *http.Response) string {
	body, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		log.Fatalln(err)
	}
	//Convert the body to type string
	return string(body)
}
