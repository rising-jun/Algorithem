#include <iostream>
#include <cstdio>
#include <string>
#include <vector>
#include <queue>
#include <algorithm>
using namespace std;

//scanf("%1c", &map[i][j]);

vector<vector<int> > map;

bool board1[8][8] = {{0,1,0,1,0,1,0,1},
                     {1,0,1,0,1,0,1,0}, 
                     {0,1,0,1,0,1,0,1}, 
                     {1,0,1,0,1,0,1,0}, 
                     {0,1,0,1,0,1,0,1}, 
                     {1,0,1,0,1,0,1,0}, 
                     {0,1,0,1,0,1,0,1}, 
                     {1,0,1,0,1,0,1,0}};

bool board2[8][8] = {{1,0,1,0,1,0,1,0},
                     {0,1,0,1,0,1,0,1}, 
                     {1,0,1,0,1,0,1,0}, 
                     {0,1,0,1,0,1,0,1}, 
                     {1,0,1,0,1,0,1,0}, 
                     {0,1,0,1,0,1,0,1}, 
                     {1,0,1,0,1,0,1,0}, 
                     {0,1,0,1,0,1,0,1}};

int mapChecking(int height, int width) {
    int count1 = 0, count2 = 0, answer = 0;
    for(int i = height; i < height + 8; i ++) {
        for(int j = width; j < width + 8; j++) {
             if(map[i][j] != board1[i-height][j-width]) {
                 count1++;
             }
             if(map[i][j] != board2[i-height][j-width]){
                 count2++;
             }
        }
    }

    count1 > count2 ? (answer = count2) : (answer = count1);
    return answer;
}


int main(){
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    cout.tie(NULL);

    int w = 0, h = 0;
    cin >> h >> w;
    
    for(int i = 0; i < h; i ++) {
        vector<int> vec;
        for(int j = 0; j < w; j++) {
            char c;
            cin >> c;
            c == 'W' ? (vec.push_back(0)) : (vec.push_back(1));
        }
        map.push_back(vec);
    }

    vector<int> answer;
    for(int i = 0; i < h - 7; i ++) {
        for(int j = 0; j < w - 7; j++) {
            int count = mapChecking(i,j);
            answer.push_back(count);
        }
    }
    
    int min = INT_MAX;
    for(int i = 0; i < answer.size(); i ++) {
        if(min > answer[i]) {
            min = answer[i];
        }
    }
    cout << min;
    return 0;
}