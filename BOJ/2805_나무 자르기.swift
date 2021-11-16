let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1]
var trees = readLine()!.split(separator: " ").map { Int(String($0))! }

var start = 0
var end = trees.max()!
var mid = 0
var result = 0
var sum = 0

while start < end {
    mid = (start + end) / 2
    sum = trees.map { $0 > mid ? $0 - mid : 0 }.reduce(0, +)
    
    if sum < m {
        end = mid
    } else {
        result = mid
        start = mid + 1
    }
}

print(result)
