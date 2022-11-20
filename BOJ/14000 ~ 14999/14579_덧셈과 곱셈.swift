let input = readLine()!.split(separator: " ").map { Int($0)! }
var result = 1
for i in input[0]...input[1] {
    let sum = (i) * (i + 1) / 2
    result *= (sum % 14579)
    result %= 14579
}
print(result)
