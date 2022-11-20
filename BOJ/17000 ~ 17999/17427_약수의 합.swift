let n = Int(readLine()!)!
var answer = 0

for i in 1...n {
    answer += (n / i) * i
}

print(answer)
