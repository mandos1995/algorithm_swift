let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
print(n % k == 0 ? "Yes" : "No")
