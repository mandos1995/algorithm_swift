let n = Int(readLine()!)!
let stats = readLine()!.split(separator: " ").map { Int($0)! }

var start = 0
var end = n - 1
var answer = 0
var maxStat = 0

while start < end {
    maxStat = (end - start - 1) * min(stats[start], stats[end])
    answer = max(answer, maxStat)
    
    if stats[start] < stats[end] {
        start += 1
    } else {
        end -= 1
    }
}

print(answer)
