while true {
    var input = readLine()!.split(separator: " ").map { Int($0)! }
    if input.count == 1 && input[0] == -1 {
        break
    }
    _ = input.removeLast()
    var answer = 0
    for i in input {
        for j in input {
            if i * 2 == j {
                answer += 1
            }
        }
    }
    print(answer)
}
