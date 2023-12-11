let n = Int(readLine()!)!
let top = readLine()!.split(separator: " ").map { Int($0)! }
var stack: [(index: Int, value: Int)] = []
var answer: [String] = []
for (index, t) in top.enumerated() {
    while !stack.isEmpty {
        if stack.last!.value > t {
            answer.append("\(stack.last!.index)")
            break
        }
        stack.removeLast()
    }
    
    if stack.isEmpty {
        answer.append("0")
    }
    
    stack.append((index + 1, t))
}

print(answer.joined(separator: " "))
