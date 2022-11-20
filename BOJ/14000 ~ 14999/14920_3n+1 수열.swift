var n = Int(readLine()!)!
var count = 1
while true {
    if n == 1 {
        break
    }
    if n % 2 == 0 {
        n = n / 2
        count += 1
    } else {
        n = 3 * n + 1
        count += 1
    }
}
print(count)
