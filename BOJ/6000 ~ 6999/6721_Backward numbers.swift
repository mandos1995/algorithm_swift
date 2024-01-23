let t = Int(readLine()!)!
for _ in 0..<t {
    solution()
}

func solution() {
    let input = readLine()!.split(separator: " ").map { Int(String($0.reversed()))! }
    let a = input[0], b = input[1]
    print(Int(String("\(a + b)".reversed()))!)
}
