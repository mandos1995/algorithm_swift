let n = Int(readLine()!)!
let m = Int(readLine()!)!
var total = 0
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let w = input[0], l = input[1]
    total += (w * l)
}
print(total / n)
