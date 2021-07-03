let input = Int(readLine()!)!
for _ in 0..<input {
    let num = Int(readLine()!)!
    var sum = 1
    var wn = 0
    for i in 1...num {
        sum += i + 1
        wn += i * sum
    }
    print(wn)
}
