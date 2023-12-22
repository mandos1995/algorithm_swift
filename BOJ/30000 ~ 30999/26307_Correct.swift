let input = readLine()!.split(separator: " ").map { Int($0)! }
let h = input[0] - 9, m = input[1]
print(h * 60 + m)
