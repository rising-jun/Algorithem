import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    
    var count = 0
    
    var sum1 = queue1.reduce(0, +)
    var sum2 = queue2.reduce(0, +)
    var q1 = queue1
    var q2 = queue2
    let limit = q1.count + q2.count + 2
    var i1 = 0
    var i2 = 0
    while(sum1 != sum2) {
        if count > limit {
            return -1
        }
        if(sum1 > sum2) {
            let num = q1[i1]
            i1 += 1
            q2.append(num)
            sum1 -= num
            sum2 += num
        } else {
            let num = q2[i2]
            i2 += 1
            q1.append(num)
            sum1 += num
            sum2 -= num
        }
        count += 1
    }
    return count
}
