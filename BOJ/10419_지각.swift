let n = Int(readLine()!)!
for _ in 0..<n {
    let t = Int(readLine()!)!
    var maxTime = 0
    for i in 1...10000 {
        maxTime = i + i * i
        if maxTime > t {
            print(i - 1)
            break
        }
    }
}
