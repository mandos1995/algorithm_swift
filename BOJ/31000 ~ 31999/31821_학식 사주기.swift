let n = Int(readLine()!)!
var a: [Int] = []
for _ in 0..<n { a.append(Int(readLine()!)!) }
let m = Int(readLine()!)!
var total = 0
for _ in 0..<m {
    total += a[Int(readLine()!)!-1]
}
print(total)
