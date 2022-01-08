let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1], x = input[2], y = input[3]
print(min(abs(a - b), abs(a - x) + abs(y - b), abs(a - y) + abs(b - x)))
