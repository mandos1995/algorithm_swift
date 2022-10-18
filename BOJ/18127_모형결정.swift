let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1]
let d = a - 2
var answer = 1
var step = 1
for _ in 1...b {
    step += d
    answer += step
}
print(answer)
