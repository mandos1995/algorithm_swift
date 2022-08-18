let n = Int(readLine()!)!
let oper = readLine()!.split(separator: " ").map { String($0) }
let nums = [Int](0...9)
var visited = [Bool](repeating: false, count: 10)
var result: [Int] = []

func operation(lhs: Int, rhs: Int, oper: String) -> Bool {
    if oper == ">" {
        return lhs > rhs
    } else {
        return lhs < rhs
    }
}

var answer: [Int] = []

func backtracking(index: Int, operIndex: Int) {
    if index == n + 1 {
        answer.append(Int(result.map { String($0) }.joined(separator: ""))!)
        return
    }
    
    for i in 0...9 {
        if !visited[i] {
            if result.isEmpty {
                result.append(i)
                visited[i] = true
                backtracking(index: index + 1, operIndex: operIndex)
            } else {
                if operation(lhs: result.last!, rhs: i, oper: oper[operIndex]) {
                    result.append(i)
                    visited[i] = true
                    backtracking(index: index + 1, operIndex: operIndex + 1)
                } else {
                    continue
                }
            }
            visited[i] = false
            result.removeLast()
            
        }
    }
}

backtracking(index: 0, operIndex: 0)
print(answer.last!)
if String(answer.first!).count == n + 1 {
    print(answer.first!)
} else {
    print("0" + String(answer.first!))
}
