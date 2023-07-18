for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = Dictionary(String(input[0], radix: 2).map { ($0, 1) }, uniquingKeysWith: +)
    let num = input[1]
    print((n["1", default: 0] % 2 == 0 ? 0 : 1) == num ? "Valid" : "Corrupt")
}
