let n = String(Int(readLine()!)!, radix: 2).map { $0 }
for i in (0..<n.count).reversed() {
    if n[i] == "1" {
        print(n.count - i - 1, terminator: " ")
    }
}
