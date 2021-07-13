let n = Int(readLine()!)!

var a = readLine()!.split(separator: " ").map { Int($0)! }
var b = readLine()!.split(separator: " ").map { Int($0)! }
var sum = 0

a.sort()
b.sort(by: >)

for i in 0..<n {
    sum += a[i] * b[i]
}
print(sum)
