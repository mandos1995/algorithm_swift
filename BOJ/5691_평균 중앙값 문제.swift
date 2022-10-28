while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input == [0, 0] {
        break
    }
    let a = input[0], b = input[1]
    print(2 * a - b)
}
