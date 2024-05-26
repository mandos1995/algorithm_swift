let input = readLine()!.split(separator: " ").map { Int($0)! }
let g = input[0], p = input[1], t = input[2]
let prev = g * p, new = g + p * t
print(prev == new ? 0 : prev < new ? 1 : 2)
