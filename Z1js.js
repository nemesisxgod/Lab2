function vivod(s) {
    let index = 0;

    for (let i = 0; i < s.length; i++) {
        if (s[i] === '1') {
            index = i;
            i++;
            while (i < s.length && s[i] === '0') {
                i++;
            }
            if (s[i] === '1' && i - index > 1) {
                console.log(s.substring(index, i + 1));
            }
            i--;
        }
    }
}

const answer = '101tf11flb10001';
vivod(answer);
