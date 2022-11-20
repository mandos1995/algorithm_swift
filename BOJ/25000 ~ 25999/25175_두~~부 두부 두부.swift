let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1], k = input[2]
print(((m - 1) + (k - 3) % n + n) % n + 1)
