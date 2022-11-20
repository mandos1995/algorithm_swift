let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
var result = 1
for i in 0..<input[0] {
    result *= (nums[i] % input[1])
    result %= input[1]
}
print(result)
