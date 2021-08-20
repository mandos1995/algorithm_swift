let num = Int(readLine()!)!
var sum = 0
for i in 1...num {
    if num % i == 0 {
        sum += i
    }
}
print(sum * 5 - 24)
