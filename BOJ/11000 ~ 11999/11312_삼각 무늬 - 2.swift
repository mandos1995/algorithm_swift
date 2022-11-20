for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    print((input[0] / input[1]) * (input[0] / input[1]))
}
