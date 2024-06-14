for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let c = input[0], p = input[1]
    print(c, p)
    print(p + (c - 1) * (p - 2))
}
