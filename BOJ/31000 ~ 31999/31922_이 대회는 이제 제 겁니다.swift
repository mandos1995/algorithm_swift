let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], p = input[1], c = input[2]
print(max(a+c, p))
