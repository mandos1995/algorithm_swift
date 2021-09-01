let input = readLine()!.split(separator: " ").map { Int($0)! }
var a = input[0]
let b = input[1]
for _ in 0..<input[2]{
    a = a ^ b
}
print(a)
