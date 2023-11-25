let input = readLine()!
var count = 0
var stack: [Character] = []
for i in input {
    if i == "*" {
        break
    } else {
        if stack.isEmpty || i == "(" {
            stack.append(i)
            count += 1
        } else {
            stack.removeLast()
            count -= 1
        }
    }
}
print(count)
