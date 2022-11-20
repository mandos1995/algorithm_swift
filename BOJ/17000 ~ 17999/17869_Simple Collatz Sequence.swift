var n = Int(readLine()!)!
var count = 0
while true {
    if n == 1 {
        break
    } else {
        n = n % 2 == 0 ? n / 2 : n + 1
        count += 1
    }
}
print(count)
