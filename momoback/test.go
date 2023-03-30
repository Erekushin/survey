package maind

import (
	"database/sql"
	"fmt"
	"log"

	"github.com/gofiber/fiber/v2"
	_ "github.com/lib/pq"
)

func maind() {
	// Establish a database connection
	connStr := "postgres://erekushin:00242112Ee$$@localhost/question_keeper?sslmode=disable"
	db, err := sql.Open("postgres", connStr)
	if err != nil {
		panic(err)
	}
	defer db.Close()

	// Execute a query
	rows, err := db.Query("SELECT * FROM curse_words")
	if err != nil {
		panic(err)
	}
	defer rows.Close()

	// Print the results
	for rows.Next() {
		var id int
		var cursing string
		err := rows.Scan(&id, &cursing)
		if err != nil {
			panic(err)
		}
		fmt.Println(id, cursing)
	}
	if err := rows.Err(); err != nil {
		panic(err)
	}

	app := fiber.New()
	app.Get("/", func(c *fiber.Ctx) error {
		return c.SendString("Hello, bitches!")
	})
	log.Fatal(app.Listen(":3000"))
}
