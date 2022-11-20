let ate = Int(readLine()!)!
var count = 0
for i in 1..<100 {
    for j in 1..<100 {
        if i + j == ate {
            count += 1
        }
    }
}
print(count)
