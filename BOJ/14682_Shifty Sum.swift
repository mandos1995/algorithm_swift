var num = Int(readLine()!)!
let k = Int(readLine()!)!
var sum = num
var step = 10
for _ in 0..<k {
    sum += num * step
    step *= 10
}

print(sum)
