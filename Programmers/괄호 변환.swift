import Foundation

func solution(_ p:String) -> String {
    var answer = ""
    if p.isEmpty {
        return ""
    }
    if isSuccess(p) {
        return p
    } else {
        let w = splitString(p)
        var u = w[0]
        let v = w[1]
        if isSuccess(u) {
            return (u + solution(v))
        } else {
            u.removeFirst()
            u.removeLast()
            return "(" + solution(v) + ")" + reversedString(u)
        }
        
    }
    return answer
}



func reversedString(_ p: String) -> String {
    return p.map { $0 == "(" ? ")" : "("}.joined()
}

func splitString(_ p: String) -> [String] {
    var leftCount = 0
    var rightCount = 0
    var u = ""
    var v = ""
    var isSuccess = false
    for p in p {
        if !isSuccess {
            u += String(p)
        } else {
            v += String(p)
        }
        
        if p == "(" {
            leftCount += 1
        } else {
            rightCount += 1
        }
        if leftCount == rightCount {
            isSuccess = true
            continue
        }
    }
    return [u, v]
}

func isSuccess(_ p: String) -> Bool {
    var stack: [Character] = []
    for p in p {
        if stack.isEmpty {
            stack.append(p)
            continue
        }
        if stack.last! == "(" && p == ")" {
            stack.removeLast()
            continue
        }
        stack.append(p)
    }
    return stack.isEmpty
}
