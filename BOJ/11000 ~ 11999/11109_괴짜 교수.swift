let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let (d, n, s, p) = (input[0], input[1], input[2], input[3])
    
    let pTime = d + n * p
    let sTime = n * s
    
    if pTime > sTime {
        print("do not parallelize")
    } else if sTime > pTime {
        print("parallelize")
    } else {
        print("does not matter")
    }
}
