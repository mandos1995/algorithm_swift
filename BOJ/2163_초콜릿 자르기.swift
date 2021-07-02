let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]

print((n - 1) + n * (m - 1))
