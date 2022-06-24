import Foundation

func solution(_ s:String) -> Int {
    var array = s.map { $0 }
    var strings: [String] = []
    let n = s.count
    var answer = 0
    for index in 0..<n {
        let string = String(array[index..<n + index])
        strings.append(string)
        array.append(array[index])
    }
    for s in strings {
        if isClearStack(s) {
            answer += 1
        }
    }
    return answer
}

func isClearStack(_ s: String) -> Bool {
    var stack: [Character] = []
    for s in s {
        if stack.isEmpty {
            stack.append(s)
            continue
        }
        
        if s == ")" && stack.last! == "(" {
            stack.removeLast()
            continue
        }
        
        if s == "]" && stack.last! == "[" {
            stack.removeLast()
            continue
        }
        
        if s == "}" && stack.last! == "{" {
            stack.removeLast()
            continue
        }
        stack.append(s)
    }
    return stack.isEmpty
}
