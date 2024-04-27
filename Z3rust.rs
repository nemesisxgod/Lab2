use std::io;

fn reverse(mut numb: i32) -> i32 {
    let mut reversed = 0;
    while numb != 0 {
        reversed = reversed * 10 + numb % 10;
        numb /= 10;
    }
    reversed
}

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Failed to read line");
    let n: i32 = input.trim().parse().expect("Invalid input");

    input.clear();
    io::stdin().read_line(&mut input).expect("Failed to read line");
    let numbers: Vec<i32> = input
        .split_whitespace()
        .map(|s| s.parse().expect("Invalid input"))
        .collect();

    for &num in numbers.iter() {
        println!("{}", reverse(num));
    }
}