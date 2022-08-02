## 백준 1018번 체스 다시 칠하기.
### 문제 분류 : 브루트 포스.
https://www.acmicpc.net/problem/1018

#### 해결 방법
- 완벽한 체스판의 배열을 미리 선언 후 상황에 따라 바꿔야 하는 갯수를 count.
- count중 가장 작은 값 리턴.

----
## 백준 2562번 최댓값
### 문제 분류 : 구현.
https://www.acmicpc.net/problem/2562

#### 해결 방법
- pair<int, int>를 선언하고 입력받는 값의 MAX를 비교하여 큰 값을 삽입함.
- 모든입력을 받고 난 후 pair를 출력함.

----
## 백준2941번 크로아티아 알파벳
### 문제 분류 : 구현.
https://www.acmicpc.net/problem/2941

#### 해결 방법
- 크로아티아 알파벳이 String에 포함될 경우 이를 a로 변경.
- 모든 알파벳을 찾은 후 String의 size()를 출력.

#### 실패 코드
```cpp
    int answer = 0;
    string s = "";
    cin >> s;
    string alpha[8] = {"c=","c-","dz=","d-","lj","nj","s=","z="};

    for(int i = 0; i < s.size(); i++) {
        answer++;
        for(int j = 0; j < sizeof(alpha)/sizeof(string); j++) {
            if(alpha[j].at(0) == s[i] && alpha[j].at(1) == s[i + 1]) {
                i++;
            }
        }
    }
    cout << answer;
```
- "dz=" 3글자의 알파벳은 예상치 못했음.
std::npos == string.find() 값을 찾았을 시 true
s.replace(index, alpha[j].size(), "a");
1. 바꿀 값의 index. 2. 몇글자나 바꿀지, 3. 바꿀 값.
