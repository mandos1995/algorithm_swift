let t = Int(readLine()!)!
var score1 = 100
var score2 = 100
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input[0] > input[1] {
        score2 -= input[0]
    } else if input[0] < input[1] {
        score1 -= input[1]
    }
}
print(score1)
print(score2)
