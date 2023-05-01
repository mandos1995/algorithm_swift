let input = readLine()!.split(separator: " ").map { Double($0)! }
let a = input[0], b = input[1]
print(Int(abs(a / b - 1) * 2))
