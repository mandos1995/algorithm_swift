let input = readLine()!.split(separator: " ").map { Int($0)! }
print(min(input[0] / 2, input[1] / 2))
