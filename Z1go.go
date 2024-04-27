package main
import "fmt"

func vivod(s string) {
	for i := 0; i < len(s); i++ {
		if s[i] == '1' {
			index := i
			i++
			for i < len(s) && s[i] == '0' {
				i++
			}
			if i < len(s) && s[i] == '1' && i-index > 1 {
				fmt.Println(s[index : i+1])
				i--
			} else{
                i--
            }
		}
	}
}

func main() {
	var stroka string = "101sdf100001"
	vivod(stroka)
}