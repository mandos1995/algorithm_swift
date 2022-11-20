let input = readLine()!.split(separator: " ").map { Int($0)! }
var (a, b) = (input[0], input[1])
var result = String(a / b)+"."
a = a % b * 10

for _ in 1...1000 {
    result += String(a / b)
    a = (a % b) * 10
}
print(result)
