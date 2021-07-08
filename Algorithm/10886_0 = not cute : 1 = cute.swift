let n = Int(readLine()!)!
var sum = 0
for _ in 0..<n {
    sum += Int(readLine()!)!
}
if sum >= n / 2 + 1 {
    print("Junhee is cute!")
} else {
    print("Junhee is not cute!")
}
