package main 

import (
  "fmt"
  "log"
)


var Version = "development"

func main() {
  log.Println("Starting App inside container")
  fmt.Println("Hello world")
  fmt.Println("Version:\t", Version)
  log.Println("Ending App inside container")
}
