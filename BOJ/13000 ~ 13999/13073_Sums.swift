let n = Int(readLine()!)!

for _ in 0..<n {
    let num = Double(readLine()!)!
    let sum1 = Int(num * (num + 1) / 2)
    let sum2 = Int((num * 2) * (num / 2))
    let sum3 = Int((num * 2 + 2) * (num / 2))
    print(sum1, sum2, sum3)
}
