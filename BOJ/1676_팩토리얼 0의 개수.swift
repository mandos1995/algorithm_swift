var n = Int(readLine()!)!
var count = 0

while n >= 5 {
    count += n / 5
    n /= 5
}
print(count)
