#include <iostream>
#include <string>

using namespace std;

void vivod(string s) {
    size_t index = 0;

    for (size_t i = 0; i < s.size(); i++)
    {
        if (s[i] == '1')
        {
            index = i;
            i++;
            while (i < s.size() and s[i] == '0') {
                i++;
            }
            if (s[i] == '1' and i - index > 1) {
                cout << s.substr(index, i-index + 1) << endl;
            }
            i--;
        }
    }
}

int main(){
    string stroka = "101dsfsdf100001";
    vivod(stroka);
}