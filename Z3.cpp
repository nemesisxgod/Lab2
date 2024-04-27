#include <iostream>

using namespace std;

void reverse(int numb) {
    int reversed = 0;
    while (numb){
        reversed = reversed * 10 + numb % 10;
        numb /= 10;
    }
    cout << reversed << endl;
}

int main(){
    int n;
    cin >> n;
    for (auto i = 0; i < n; i++) {
        int chislo;
        cin >> chislo;
        reverse(chislo);
    }
}