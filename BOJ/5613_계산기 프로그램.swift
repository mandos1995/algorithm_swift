var num = Int(readLine()!)!
var sum = num
while true {
    let operators = readLine()!
    if operators == "=" {
        break
    }
    num = Int(readLine()!)!
    switch operators {
    case "+":
        sum += num
    case "-":
        sum -= num
    case "*":
        sum *= num
    case "/":
        sum /= num
    default:
        break
    }
}
print(sum)
