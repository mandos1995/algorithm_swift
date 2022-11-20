let n = Int(readLine()!)!
var step = 1
var sum = 0
for _ in 0..<n - 1 {
    sum += step * (n + 1)
    step += 1
}
print(sum)
