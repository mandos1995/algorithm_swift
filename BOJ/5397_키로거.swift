let n = Int(readLine()!)!
for _ in 0..<n {
    var stack1: [Character] = []
    var stack2: [Character] = []
    let string = readLine()!
    for chr in string {
        if chr == "<" {
            if !stack1.isEmpty {
                stack2.append(stack1.removeLast())
            }
        } else if chr == ">" {
            if !stack2.isEmpty {
                stack1.append(stack2.removeLast())
            }
        } else if chr == "-" {
            if !stack1.isEmpty {
                _ = stack1.popLast()!
            }
            
        } else {
            stack1.append(chr)
        }
    }
    print(String(stack1) + String(stack2.reversed()))
}
