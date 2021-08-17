let n = Int(readLine()!)!

for _ in 0..<n {
    let input = Int(readLine()!)!
    var count = 0
    
    for i in 1...input {
        if input % i == 0 {
            count += 1
        }
    }
    print(input, count)
}
