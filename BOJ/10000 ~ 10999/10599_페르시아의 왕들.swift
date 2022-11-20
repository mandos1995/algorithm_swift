let exit = [0, 0, 0, 0]
while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input == exit {
        break
    } else {
        print(input[2] - input[1] ,input[3] - input[0])
    }
}
