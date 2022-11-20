let n = Int(readLine()!)!
var count = 0
var step = 2
if n == 3 || n == 6 {
    count = 0
} else {
    count = 1
    for _ in 3..<n / 3 {
        count += step
        step += 1
    }
}
print(count)
