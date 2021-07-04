let input = Int(readLine()!)!
var fibo = [Int](repeating: 0, count: 91)
var num = 1
for i in 1..<91 {
    fibo[i] = num
    num += fibo[i - 1]
}
print(fibo[input])
