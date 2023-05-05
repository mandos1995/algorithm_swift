let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
let s = readLine()!.split(separator: " ").map { Int($0)! }
var t: [[Int]] = []
var answer = s + [Int](repeating: 0, count: m)

for i in 0..<n {
    let cost = readLine()!.split(separator: " ").map { Int($0)! }
    t.append(cost)
    answer[i] -= cost.reduce(0, +)
}

for i in 0..<n {
    for j in 0..<n + m {
        answer[j] += t[i][j]
    }
}

print(answer.map { String($0) }.joined(separator: " "))
