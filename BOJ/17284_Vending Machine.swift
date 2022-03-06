let input = readLine()!.split(separator: " ").map { Int($0)! }
var answer = 0
for i in input {
    switch i {
    case 1:
        answer += 500
    case 2:
        answer += 800
    case 3:
        answer += 1000
    default:
        continue
    }
}
print(5000 - answer)
