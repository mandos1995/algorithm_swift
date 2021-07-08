var sum = Int(readLine()!)!
var realSum = 0
var book: [Int] = []
for _ in 0..<9 {
    book.append(Int(readLine()!)!)
}
realSum = book.reduce(0, +)

print(sum - realSum)
