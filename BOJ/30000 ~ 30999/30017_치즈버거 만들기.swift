let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1]
print(a > b ? b * 2 + 1 : a * 2 - 1)
