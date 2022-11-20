while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input == [0, 0, 0] { break }
    let a = input[0], d = input[1], b = input[2]
    if (b - a) % d == 0 && (b - a) / d + 1 > 0 {
        print((b - a) / d + 1)
    } else { print("X") }
}
