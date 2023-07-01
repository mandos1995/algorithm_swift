var n = Int(readLine()!)!
var answer = 0
while n != 1 {
    n = n % 2 == 1 ? 3 * n + 1 : n / 2
    answer += 1
}

print(answer)
