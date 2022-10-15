import Foundation

func solution(_ n:Int) -> Int
{
    var count = 0
var gap = 1

var currentNum = n
while(currentNum != 0) {
    var val = currentNum % 2
    if val == 1 {
        count += 1
    }
    currentNum /= 2
}

print(count)
while(true) {
    var newCount = 0
    currentNum = n + gap
    while(currentNum != 0) {
        var val = currentNum % 2
        if val == 1 {
            newCount += 1
        }
        currentNum /= 2
    }
    
    if newCount == count {
        break
    }
    gap += 1
}
 return n + gap
}
