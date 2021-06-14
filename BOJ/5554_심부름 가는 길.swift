var sum = 0
for _ in 1...4{
    let a = Int(readLine()!)!
    sum += a
}
print(sum/60)
print(sum%60)
