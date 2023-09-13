let n = Int(readLine()!)!
let k = Int(readLine()!)!
var sum = 1
var total = 0
for _ in 0..<k - 1 {
    print(sum)
    total += sum
    sum += 1
}
print(n - total)
