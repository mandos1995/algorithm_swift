let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
var prefixSum = [0] + array

for i in 1...n {
    prefixSum[i] += prefixSum[i - 1]
}

let t = Int(readLine()!)!
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int($0)! + 1 }
    let start = input[0], end = input[1]
    print(prefixSum[end] - prefixSum[start - 1])
}
