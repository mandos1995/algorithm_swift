let n = Int(readLine()!)!

var answer = 0
var total = 0
var start = 1
var end = 1

while start <= end && end <= n {
    if total < n {
        total += end
        end += 1
    } else {
        if total == n { answer += 1 }
        total -= start
        start += 1
    }
}

print(answer + 1)
