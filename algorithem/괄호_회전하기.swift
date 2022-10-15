func solution(_ s:String) -> Int {
    var answer = 0
    var ss = s
    
    for i in s {
        var result = true
        var stack = Stack<String>()
        let last = ss.removeFirst()
        ss.append(last)
        for str in ss.reversed() {
            var top = stack.top()
            let str = String(str)
            if (str == "]" || str == "}" || str == ")") {
                stack.push(str)
                top = str
            } else {
                if stack.empty() {
                    result = false
                    break
                }
                switch str {
                case "[":
                    if top == "]" {
                        stack.pop()
                    }
                case "(":
                    if top == ")" {
                        stack.pop()
                    }
                case "{":
                    if top == "}" {
                        stack.pop()
                    }
                default:
                    break
                }
            }
        }
        if stack.empty() {
            if result {
                answer += 1
            }
        }
    }
    return answer
}
