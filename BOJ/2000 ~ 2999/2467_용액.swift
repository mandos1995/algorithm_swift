let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
var answer = (0, 0)
var sum = Int.max

var start = 0
var end = n - 1

while start < end {
    if abs(array[start] + array[end]) < sum {
        answer = (array[start], array[end])
        sum = abs(array[start] + array[end])
        continue
    }
    
    if array[start] + array[end] < 0 {
        start += 1
    } else {
        end -= 1
    }
}

print(answer.0, answer.1)
