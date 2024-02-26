let n = Int(readLine()!)!
var times: [Int] = []
var answer = 0
for _ in 0..<n {
    times.append(Int(readLine()!)!)
}
if n % 2 == 1 {
    print("still running")
} else {
    for i in 0..<n / 2 {
        answer += (times[i * 2 + 1] - times[i * 2])
    }
    print(answer)
}
