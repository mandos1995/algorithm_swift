func solution() {
    var sequence: [Int] = [0]
    var n = Int(readLine()!)!
    while let end = sequence.last, end != 1 {
        sequence.append(n)
        n = n % 2 == 0 ? n / 2 : 3 * n + 1
    }
    print(sequence.max()!)
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }
