let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1], a = input[2], b = input[3]
print(abs(1 - k) * b + (n - 1) * b, (n - 1) * a)
