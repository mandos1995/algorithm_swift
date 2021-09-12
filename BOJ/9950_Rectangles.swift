while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input[0] == 0 && input[1] == 0 && input[2] == 0 {
        break
    } else {
        if input[0] == 0 {
            print(input[2] / input[1], input[1], input[2])
        } else if input[1] == 0 {
            print(input[0], input[2] / input[0], input[2])
        } else if input[2] == 0 {
            print(input[0], input[1], input[0] * input[1])
        }
    }
}
