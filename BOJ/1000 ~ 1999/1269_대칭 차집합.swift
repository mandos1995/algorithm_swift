let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
let a = Set(readLine()!.split(separator: " ").map { Int($0)! })
let b = Set(readLine()!.split(separator: " ").map { Int($0)! })
var answer = 0

for s in a {
    if !b.contains(s) {
        answer += 1
    }
}

for s in b {
    if !a.contains(s) {
        answer += 1
    }
}

print(answer)
