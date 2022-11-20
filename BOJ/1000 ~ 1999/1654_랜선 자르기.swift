let input = readLine()!.split(separator: " ").map { Int($0)! }
let k = input[0], n = input[1]
var lan = [Int]()
for _ in 0..<k {
    lan.append(Int(readLine()!)!)
}

var start = 1
var end = lan.max()!
var mid = 0
var result = 0
var sum = 0

while start <= end {
    mid = (start + end) / 2
    if mid != 0 {
        sum = lan.map { $0 >= mid ? $0 / mid : 0 }.reduce(0, +)
    }
    
    if sum < n {
        end = mid - 1
    } else {
        result = mid
        start = mid + 1
    }
}
print(result)
