let t = Int(readLine()!)!
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0], m = input[1]
    for _ in 0..<m {
        print(String(repeating: "X", count: n))
    }
    print()
}
