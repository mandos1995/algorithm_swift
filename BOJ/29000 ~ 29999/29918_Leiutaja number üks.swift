var answer = 0
var score = 0
var flag = false
for i in 0..<6 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if i == 0 {
        score = input[0] + input[1] * 10
        continue
    }
    if ((input[0] + input[1] * 10) - score) >= answer {
        answer = (input[0] + input[1] * 10) - score
        flag = true
    }
}
print(flag ? answer + 1 : 0)
