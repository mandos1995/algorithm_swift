let input = Int(readLine()!)!
var fibo = [Int](repeating: 0, count: 46)
var num = 1
for i in 1..<46 {
    fibo[i] = num
    num += fibo[i - 1]
}
print(fibo[input])
