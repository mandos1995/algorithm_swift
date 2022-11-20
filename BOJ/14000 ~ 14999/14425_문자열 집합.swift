let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var s = Set<String>()
var check = Set<String>()

for _ in 0..<n {
    s.insert(readLine()!)
}
var answer = 0
for _ in 0..<m {
    if s.contains(readLine()!) {
        answer += 1
    }
}

print(answer)
