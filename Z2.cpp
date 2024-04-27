#include <iostream>
#include <string>
#include <map>
#include <set>

using namespace std;

void perevod(string s) {
    int predZnach = 0;
    int summa = 0;
    map <char, int> romanNumbers = { {'I', 1}, {'V', 5}, {'X', 10}, {'L', 50}, {'C', 100}, {'D', 500}, {'M', 1000} };
    set <char> usedNumbers(s.begin(), s.end());
    for (int i = s.size() - 1; i >= 0; i--) {
        int znach = romanNumbers[s[i]];
        if (znach < predZnach) {
            summa -= znach;
        }
        else {
            summa += znach;
        }
        predZnach = znach;
    }
    cout << summa << endl;
    for (auto c : usedNumbers){
        cout << c << " = " << romanNumbers[c] << ' ';
    }
}

int main(){
    string number;
    cin >> number;
    perevod(number);
}
