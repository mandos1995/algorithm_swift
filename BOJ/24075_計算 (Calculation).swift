let input = readLine()!.split(separator: " ").map { Int($0)! }
print(max(input[0] + input[1], input[0] - input[1]))
print(min(input[0] + input[1], input[0] - input[1]))
