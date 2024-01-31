let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
var prefixSum = 0
var answer = 0
for i in 0..<n - 1 {
    prefixSum += array[i]
    answer += array[i + 1] * prefixSum
}
print(answer)
