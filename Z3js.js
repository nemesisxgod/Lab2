const readline = require('readline');

function reverse(numb) {
    let reversed = 0;
    while (numb !== 0) {
        reversed = reversed * 10 + numb % 10;
        numb = Math.floor(numb / 10);
    }
    console.log(reversed);
}

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('Enter the number of inputs: ', (n) => {
    n = parseInt(n);
    let count = 0;

    const processInput = () => {
        if (count < n) {
            rl.question('Enter a number: ', (chislo) => {
                chislo = parseInt(chislo);
                reverse(chislo);
                count++;
                processInput();
            });
        } else {
            rl.close();
        }
    };

    processInput();
});