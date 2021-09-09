let n = Int(readLine()!)!
var coin = [Int]()
var zero = 0
var one = 0
for _ in 0..<n {
    coin.append(Int(readLine()!)!)
}

for i in 0..<n {
    if coin[i] == 0 {
        zero += 1
    } else {
        one += 1
    }
}

print(min(zero, one))
