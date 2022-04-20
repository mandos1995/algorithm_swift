let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], s = input[1]
let array = readLine()!.split(separator: " ").map { Int($0)! }

var end = 0
var total = 0
var count = 0
var answer = n + 1

for start in 0..<n {
    while total < s && end < n {
        total += array[end]
        end += 1
    }
    
    if total >= s {
        answer = min(end - start, answer)
    }
    total -= array[start]
}

answer == n + 1 ? print(0) : print(answer)
