let t = Int(readLine()!)!

for _ in 0..<t {
    solution()
}

func solution() {
    let input = readLine()!.split(separator: " ")
    let n = Int(String(input[0]))!
    var alpha = Int(input[1].last!.asciiValue!)
    for i in 0..<n {
        print(String(repeating: "\(UnicodeScalar(alpha)!)", count: i + 1))
        alpha += 1
        if alpha > 90 { alpha -= 26}
    }
    print()
}
