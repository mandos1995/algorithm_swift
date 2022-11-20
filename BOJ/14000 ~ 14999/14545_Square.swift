let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    var sum = 0
    for i in 1...n {
        sum += i * i
    }
    print(sum)
}
