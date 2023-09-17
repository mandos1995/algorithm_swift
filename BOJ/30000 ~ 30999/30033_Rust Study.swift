let n = Int(readLine()!)!
let plan = readLine()!.split(separator: " ").map { Int($0)! }
let play = readLine()!.split(separator: " ").map { Int($0)! }
var answer = 0
for i in 0..<n {
    if play[i] >= plan[i] {
        answer += 1
    }
}

print(answer)
