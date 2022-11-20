let range = Int(readLine()!)!

for _ in 0..<range {
    let n = Int(readLine()!)!
    var sum = 0
    for i in 1...n {
        if i % 2 == 1 {
            sum += i
        }
    }
    print(sum)
}
