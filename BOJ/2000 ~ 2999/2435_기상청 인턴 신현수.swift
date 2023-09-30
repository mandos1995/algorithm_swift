let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
let array = readLine()!.split(separator: " ").map { Int($0)! }
var prefixSum = [0] + array
var answer = Int.min
for i in 1...n {
    prefixSum[i] += prefixSum[i - 1]
}

for i in 0...n - k {
    answer = max((prefixSum[i + k] - prefixSum[i]), answer)
}

print(answer)
