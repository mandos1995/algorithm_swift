let brackets = readLine()!
var stack: [Character] = []
for b in brackets {
    if stack.last == "(" && b == ")" {
        stack.removeLast()
    } else {
        stack.append(b)
    }
}
print(stack.count)
