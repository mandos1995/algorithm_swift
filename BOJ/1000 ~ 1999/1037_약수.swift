let n = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map { Int($0)! }
var result = 0
input.sort()
if n == 1 {
    result = input[0] * input[0]
} else {
    result = input[0] * input[input.count - 1]
}
print(result)
