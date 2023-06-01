let n = Int(readLine()!)!
let notN = ~n + 1
var answer = 0
for i in (0...31) {
    answer += (n & (1 << i)) ^ (notN & (1 << i)) != 0 ? 1 : 0
}

print(answer)
