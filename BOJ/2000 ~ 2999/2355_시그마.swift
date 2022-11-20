let input = readLine()!.split(separator: " ").map { Int($0)! }
print((input[0] + input[1]) * (abs(input[0] - input[1]) + 1) / 2)
