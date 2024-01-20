let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var answer = 0
for _ in 0..<n {
    answer += readLine()!.filter { $0 == "O" }.count > m / 2 ? 1 : 0
}
print(answer)
