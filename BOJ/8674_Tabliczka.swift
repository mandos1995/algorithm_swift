let input = readLine()!.split(separator: " ").map { Int($0)! }
if input[0] % 2 == 0 || input[1] % 2 == 0 {
    print(0)
} else {
    print(min(input[0], input[1]))
}
