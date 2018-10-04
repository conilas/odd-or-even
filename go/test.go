package main

import (
	"fmt"
)

func isEvenOdd(number int) {
	if number%2 == 0 {
		fmt.Printf("The number is even!")
	} else {
		fmt.Printf("The number is odd!")
	}
}

func main() {
	isEvenOdd(2)
	isEvenOdd(3)
	isEvenOdd(4)
}
