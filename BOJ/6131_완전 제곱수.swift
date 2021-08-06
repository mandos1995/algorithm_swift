let n = Int(readLine()!)!
var count = 0
for i in 1...500 {
    for j in i...500{
        if j * j - i * i == n {
            count += 1
        }
    }
}
print(count)
