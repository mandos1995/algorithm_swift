let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
var prefixSum = [Int](repeating: 0, count: n)
prefixSum[0] = array[0]
for i in 1..<n {
    prefixSum[i] = prefixSum[i - 1] + array[i]
}

var answer = 0

for i in 0..<n - 1 {
    answer += array[i] * (prefixSum[n - 1] - prefixSum[i])
}

print(answer)
