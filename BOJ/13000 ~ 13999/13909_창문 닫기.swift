let n = Int(readLine()!)!
var i = 1
var answer = 0
while i * i <= n {
    answer += 1
    i += 1
}

print(answer)
