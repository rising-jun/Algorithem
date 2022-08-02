#include <iostream>
#include <vector>
#include <string>
using namespace std;

int main(){
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    cout.tie(NULL);
    int answer = 0;
    string s = "";
    cin >> s;
    string alpha[8] = {"c=","c-","dz=","d-","lj","nj","s=","z="};

    int index = 0;
    for(int j = 0; j < sizeof(alpha)/sizeof(string); j++) {
        index = s.find(alpha[j]);
        while(index != string::npos) {
            s.replace(index, alpha[j].size(), "a");
            index = s.find(alpha[j]);
        }
    }
    cout << s.length();
    return 0;
}


// int main(){
//     ios_base::sync_with_stdio(false);
//     cin.tie(NULL);
//     cout.tie(NULL);
//     int answer = 0;
//     string s = "";
//     cin >> s;
//     string alpha[8] = {"c=","c-","dz=","d-","lj","nj","s=","z="};

//     for(int i = 0; i < s.size(); i++) {
//         answer++;
//         for(int j = 0; j < sizeof(alpha)/sizeof(string); j++) {
//             if(alpha[j].at(0) == s[i] && alpha[j].at(1) == s[i + 1]) {
//                 i++;
//             }
//         }
//     }
//     cout << answer;
//     return 0;
// }