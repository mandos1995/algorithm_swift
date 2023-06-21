let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let l = Double(input[1])
let array = readLine()!.split(separator: " ").map { Double($0)! }
var prefixSum = [Double](repeating: 0, count: n)
prefixSum[0] = array[0]
for i in 1..<n {
    prefixSum[i] = array[i] + prefixSum[i - 1]
}

var isStable = true

for i in 0..<n - 1 {
    let x = (prefixSum[n - 1] - prefixSum[i]) / Double(n - i - 1)
    if !(x > array[i] - l && x < array[i] + l) {
        isStable = false
        break
    }
}

print(isStable ? "stable" : "unstable")
