let count = Int(readLine()!)!
let price = Int(readLine()!)!
var answer = price
if count > 4 {
    answer = min(answer, price - 500)
}
if count > 9 {
    answer = min(answer, price * 90 / 100)
}
if count > 14 {
    answer = min(answer, price - 2000)
}
if count > 19 {
    answer = min(answer, price * 75 / 100)
}

print(max(0, answer))
