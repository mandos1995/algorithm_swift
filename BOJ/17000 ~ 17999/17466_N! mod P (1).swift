let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], p = input[1]
var result = 1
for i in 1...n {
    result *= i
    result %= p
}
print(result)
