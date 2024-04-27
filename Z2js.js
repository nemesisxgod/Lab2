function isValid(s) {
    let count = 1;
    let chislo = s.charAt(0);
    for (let i = 1; i < s.length; i++) {
        if (s.charAt(i) === chislo) {
            count++;
            if (count > 3) {
                return false;
            }
        } else {
            count = 1;
            chislo = s.charAt(i);
        }
    }
    return true;
}

function perevod(s) {
    let predZnach = 0;
    let summa = 0;
    const romanNumbers = {
        'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000
    };
    const usedNumbers = new Set(s.split(''));
    for (let i = s.length - 1; i >= 0; i--) {
        let znach = romanNumbers[s.charAt(i)];
        if (znach < predZnach) {
            summa -= znach;
        } else {
            summa += znach;
        }
        predZnach = znach;
    }
    console.log(summa);
    for (let c of usedNumbers) {
        console.log(c + ' = ' + romanNumbers[c] + ' ');
    }
}

const readline = require('readline');
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('Enter a Roman number: ', (answer) => {
    if (!isValid(answer)) {
        console.log("The number is entered incorrectly");
    } else {
        perevod(answer);
    }
    rl.close();
});