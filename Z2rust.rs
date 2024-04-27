use std::collections::HashSet;
use std::collections::HashMap;
use std::io;

fn is_valid(s: &str) -> bool {
    let mut count = 1;
    let mut chislo = s.chars().next().unwrap();
    for c in s.chars().skip(1) {
        if c == chislo {
            count += 1;
            if count > 3 {
                return false;
            }
        } else {
            count = 1;
            chislo = c;
        }
    }
    true
}

fn perevod(s: &str) {
    let roman_numbers: HashMap<char, i32> = [('I', 1), ('V', 5), ('X', 10), ('L', 50), ('C', 100), ('D', 500), ('M', 1000)]
        .iter().cloned().collect();

    let mut used_numbers = HashSet::new();
    for c in s.chars() {
        used_numbers.insert(c);
    }

    let mut pred_znach = 0;
    let mut summa = 0;
    for c in s.chars().rev() {
        let znach = *roman_numbers.get(&c).unwrap();
        if znach < pred_znach {
            summa -= znach;
        } else {
            summa += znach;
        }
        pred_znach = znach;
    }

    println!("{}", summa);
    for c in used_numbers {
        print!("{} = {} ", c, roman_numbers[&c]);
    }
}

fn main() {
    let mut number = String::new();
    io::stdin().read_line(&mut number).expect("Failed to read line");
    let number = number.trim();

    if is_valid(number) {
        perevod(number);
    } else {
        println!("the number is entered incorrectly");
    }
}