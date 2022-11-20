let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var result = Int.max
var setMin = 1001
var oneMin = 1001
for _ in 0..<m {
    let cost = readLine()!.split(separator: " ").map { Int($0)! }
    let setCost = cost[0]
    let oneCost = cost[1]
    setMin = min(setCost, setMin)
    oneMin = min(oneCost, oneMin)
}
if Double(setMin) / 6 > Double(oneMin) {
    result = oneMin * n
} else {
    result = min((n / 6) * setMin + (n % 6) * oneMin, (n / 6) * setMin + setMin)
}
print(result)
