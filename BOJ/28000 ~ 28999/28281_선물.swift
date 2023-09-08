let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], x = input[1]
let arr = readLine()!.split(separator: " ").map { Int($0)! }
var answer = Int.max
for i in 1..<n {
    answer = min((arr[i] + arr[i - 1]) * x, answer)
}
print(answer)
