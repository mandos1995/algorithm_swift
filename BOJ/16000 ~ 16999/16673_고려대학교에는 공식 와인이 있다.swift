let input = readLine()!.split(separator: " ").map { Int($0)! }
var sum = 0
if input[0] == 0 {
    sum = 0
} else {
    for i in 1...input[0] {
        sum += input[1] * i + input[2] * i * i
    }
}
print(sum)
