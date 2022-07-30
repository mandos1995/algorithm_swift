for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let w = input[0], k = input[1]
    let result = w * k / 2
    print(result)
}
