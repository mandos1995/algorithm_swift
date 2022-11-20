let k = Int(readLine()!)!
for _ in 0..<k {
    solution()
}

func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let p = input[0]
    var seat = [Bool](repeating: false, count: 501)
    for _ in 0..<p {
        let n = Int(readLine()!)!
        if !seat[n] {
            seat[n] = true
        }
    }
    print(p - seat.filter { $0 == true }.count)
    
}
