let a = Int(readLine()!)!
let b = Int(readLine()!)!
var stack = [a, b]

while true {
    let b = stack.removeLast()
    let a = stack.removeLast()
    let newValue = a - b
    stack.append(a)
    stack.append(b)
    stack.append(newValue)
    if newValue > b {
        break
    }
}

print(stack.count)
