let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1], c = input[2]
print(a + b == c ? "correct!" : "wrong!")
