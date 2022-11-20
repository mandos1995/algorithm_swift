let input = readLine()!.split(separator: " ").map { Int($0)! }
let x = input[0], y = input[1], w = input[2], h = input[3]
print(min(x, y, w - x, h - y))
