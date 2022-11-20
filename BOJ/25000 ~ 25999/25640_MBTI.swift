let mbti = readLine()!
let n = Int(readLine()!)!
var answer = 0
for _ in 0..<n {
    answer += mbti == readLine()! ? 1 : 0
}
print(answer)
