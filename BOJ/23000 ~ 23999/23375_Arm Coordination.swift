let input = readLine()!.split(separator: " ").map { Int($0)! }
let x = input[0], y = input[1]
let r = Int(readLine()!)!

print(x - r, y + r)
print(x + r, y + r)
print(x + r, y - r)
print(x - r, y - r)
