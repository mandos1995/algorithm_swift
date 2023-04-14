let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

var start = 0
var end = n - 1
var answer = [0, 0]
var sum = 1_000_000_000

while start < end {
    if sum > abs(array[start] + array[end]) {
        sum = abs(array[start] + array[end])
        answer = [array[start], array[end]]
    }
    if array[start] + array[end] < 0 {
        start += 1
    } else {
        end -= 1
    }
}

print(answer[0], answer[1])
