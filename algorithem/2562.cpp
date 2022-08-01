#include <iostream>
#include <vector>
using namespace std;

//scanf("%1c", &map[i][j]);

const int COUNT = 9;
pair<int, int> answer;

int main(){
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    cout.tie(NULL);
    
    for(int i = 0; i < COUNT; i++) {
        int value = 0;
        cin >> value;
        if(answer.first < value) {
            answer.first = value;
            answer.second = i;
        }
    }

    cout << answer.first << "\n" << (answer.second + 1);
    return 0;
}