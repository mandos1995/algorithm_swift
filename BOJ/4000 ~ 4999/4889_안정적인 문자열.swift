import Foundation
var i = 1
while let str = readLine(), !str.contains("-") {
    var stack: [Character] = []
    var answer = 0
    for s in str {
        if stack.isEmpty {
            if s == "}" {
                answer += 1
            }
            stack.append("{")
            continue
        }
        
        if s == "}" {
            stack.removeLast()
        } else {
            stack.append(s)
        }
    }
    answer += stack.count / 2
    print("\(i). \(answer)")
    i += 1
}
