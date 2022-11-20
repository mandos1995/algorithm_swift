let n = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map { Int($0)! }

input.sort()
var days = n
for i in 0..<n {
    input[i] -= i
}
days += input.max()! + 1
print(days)
