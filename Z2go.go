package main

import (
	"fmt"
)

func isValid(s string) bool {
	count := 1
	chislo := s[0]
	for i := 1; i < len(s); i++ {
		if s[i] == chislo {
			count++
			if count > 3 {
				return false
			}
		} else {
			count = 1
			chislo = s[i]
		}
	}
	return true
}

func perevod(s string) {
	predZnach := 0
	summa := 0
	romanNumbers := map[rune]int{'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000}
	usedNumbers := make(map[rune]bool)
	for i := len(s) - 1; i >= 0; i-- {
        r := rune(s[i])
		znach := romanNumbers[r]
		if znach < predZnach {
			summa -= znach
		} else {
			summa += znach
		}
		predZnach = znach
		usedNumbers[r] = true
	}

	fmt.Println(summa)
	for c := range usedNumbers {
		fmt.Printf("%c = %d ", c, romanNumbers[c])
	}
}

func main() {
	var number string
	fmt.Scan(&number)
	if isValid(number) {
		perevod(number)
	} else {
		fmt.Println("the number is entered incorrectly")
	}
}