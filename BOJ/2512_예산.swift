let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
let total = Int(readLine()!)!
var totalSum = 0
func condition(x: Int) -> Bool {
    totalSum = 0
    for price in array {
        totalSum += min(price, x)
    }
    return totalSum <= total
}

var start = 0
var end = array.max()!
while start <= end {
    let mid = (start + end) / 2
    if condition(x: mid) {
        start = mid + 1
    } else {
        end = mid - 1
    }
}

print(end)
