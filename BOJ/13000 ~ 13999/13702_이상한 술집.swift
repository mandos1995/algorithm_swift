let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var array: [Int] = []
for _ in 0..<n { array.append(Int(readLine()!)!) }
var start = 0
var end = array.max()!

while start <= end {
    let mid = (start + end) / 2
    if mid == 0 { break }
    let target = array.map { $0 / mid }.reduce(0, +)
    if target >= k {
        start = mid + 1
    } else {
        end = mid - 1
    }
}

print(end)
