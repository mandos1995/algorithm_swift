let input = readLine()!.map { $0 == "c" ? 26 : 10 }
var answer = input[0]
for i in 1..<input.count {
    answer *= input[i - 1] == input[i] ? (input[i] - 1) : input[i]
}
print(answer)
