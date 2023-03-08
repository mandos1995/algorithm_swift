let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1], c = input[2]
print(min(n, a) + min(n, b) + min(n, c))
