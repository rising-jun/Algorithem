import Foundation

let rl = readLine()!
var N = Int(rl)!
var dp = [Int](repeating: -1, count: 91)

print(run())
func run() -> Int {
    if N < 3 { return 1 }
    dp[1] = 1
    dp[2] = 1
    
    for i in 3 ... N {
        dp[i] = dp[i - 1] + dp[i - 2]
    }
    return dp[N]
}
