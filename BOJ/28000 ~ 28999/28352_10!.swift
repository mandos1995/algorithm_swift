let n = Int(readLine()!)!
var f = 1
for i in 1...n {
    f *= i
}
print(f / (7 * 24 * 60 * 60))
