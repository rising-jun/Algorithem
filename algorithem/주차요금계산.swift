import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    
    var dic: [String: [Info]] = [:]
    var cars: [String] = []
    
    for str in records {
        let strArr = str.split(separator: " ")
        let car = String(strArr[1])
        let timeSplit = strArr[0].split(separator: ":")
        let timeNum = Int(timeSplit[0])! * 60 + Int(timeSplit[1])!
        
        switch IO(rawValue: String(strArr[2]))! {
        case .IN:
            if dic[car] == nil {
                cars.append(car)
                dic[car] = [Info(inTimeNum: timeNum)]
            } else {
                dic[car]!.append(Info(inTimeNum: timeNum))
            }
        case .OUT:
            dic[car]!.last!.setOutTimeNum(timeNum)
        }
    }
    cars.sort()
    
    var totalTime = [Int](repeating: 0, count: dic.count)
    for (index, key) in cars.enumerated() {
        if let infos = dic[key] {
            for info in infos {
                totalTime[index] += info.outTimeNum - info.inTimeNum
            }
        }
    }
    var answer: [Int] = []
    for time in totalTime {
        if time > fees[0] {
            let pay = ceil(Double(time - fees[0]) / Double(fees[2])) * Double(fees[3]) + Double(fees[1])
            answer.append(Int(pay))
        } else {
            answer.append(fees[1])
        }
    }
    return answer
}

class Info: CustomStringConvertible {
    var inTimeNum: Int = 0
    var outTimeNum: Int = 60 * 23 + 59
    func setOutTimeNum(_ num: Int) {
        outTimeNum = num
    }
    
    init(inTimeNum: Int) {
        self.inTimeNum = inTimeNum
    }
    
    var description: String {
        return "(inTimeNum: \(inTimeNum), outTimeNum \(outTimeNum))"
    }
}

enum IO: String {
    case IN = "IN"
    case OUT = "OUT"
}
