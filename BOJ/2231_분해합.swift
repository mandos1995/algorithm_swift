let n = Int(readLine()!)!
var num = 0
for i in 1...n {
    let createNumber = String(i).map { Int(String($0))! }.reduce(0, +) + i
    if createNumber == n {
        num = i
        break
    }
}
print(num)
