let string = readLine()!.map { String($0) }
var stack: [Character] = []
var result = 0
for (index, str) in string.enumerated() {
    if str == "(" {
        stack.append("(")
    } else {
        _ = stack.removeLast()
        if string[index - 1] == "(" {
            result += stack.count
        } else {
            result += 1
        }
    }
}
print(result)
