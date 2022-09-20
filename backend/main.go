package main

import (
	"io/ioutil"
	"log"
	"net/http"

	"github.com/gofiber/fiber/v2"
)

func main() {
	app := fiber.New()

	app.Get("/saliny/:stopId", func(c *fiber.Ctx) error {
		stopId := c.Params("stopId")
		resp, err := http.Get("https://mapa.idsjmk.cz/api/Departures?stopid=" + stopId)
		if err != nil {
			log.Fatalln(err)
		}

		body, err := ioutil.ReadAll(resp.Body)
		if err != nil {
			log.Fatalln(err)
		}
		//Convert the body to type string
		sb := string(body)

		return c.SendString(sb)
	})

	log.Fatal(app.Listen(":3000"))
}
