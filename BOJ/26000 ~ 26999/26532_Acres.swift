let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1]
print(a * b / 4840 / 5 + 1)
