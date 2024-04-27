package main

import "fmt"

func reverse(numb int) {
	reversed := 0
	for numb != 0 {
		reversed = reversed*10 + numb%10
		numb /= 10
	}
	fmt.Println(reversed)
}

func main() {
	var n int
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		var chislo int
		fmt.Scan(&chislo)
		reverse(chislo)
	}
}