let n = Int(readLine()!)!
var minValue = 0
var maxValue = 0
for i in 1..<n {
    if n % i != 0 {
        minValue = i
        break
    }
}
for i in (1..<n).reversed() {
    if n % i != 0 {
        maxValue = i
        break
    }
}

print(minValue, maxValue)
