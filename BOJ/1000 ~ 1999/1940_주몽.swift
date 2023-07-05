let n = Int(readLine()!)!
let m = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

var answer = 0
var start = 0
var end = n - 1

while start < end {
    let sum = array[start] + array[end]
    if sum == m {
        answer += 1
    }
    if sum > m {
        end -= 1
    } else {
        start += 1
    }
}

print(answer)
