let input = readLine()!.split(separator: " ").map { Int($0)! }
let s = input[0], d = input[1], i = input[2], l = input[3], n = input[4]
print(max(0, n * 4 - (s + d + i + l)))
