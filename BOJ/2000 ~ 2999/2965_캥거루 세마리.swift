var input = readLine()!.split(separator: " ").map { Int($0)! }
input.sort()
if input[2] - input[1] > input[1] - input[0] {
    print(input[2] - input[1] - 1)
} else {
    print(input[1] - input[0] - 1)
}
