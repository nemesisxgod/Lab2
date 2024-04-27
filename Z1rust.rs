use std::io;

fn vivod(s: String) {
    let mut index = 0;

    let mut i = 0;
    while i < s.len() {
        if s.chars().nth(i) == Some('1') {
            index = i;
            i += 1;
            while i < s.len() && s.chars().nth(i) == Some('0') {
                i += 1;
            }
            if i < s.len() && s.chars().nth(i) == Some('1') && i - index > 1 {
                println!("{}", &s[index..=i]);
            }
            i -= 1;
        }
        i += 1;
    }
}

fn main() {
    let mut stroka = "101sdfsd100001";
    vivod(stroka.trim().to_string());
}