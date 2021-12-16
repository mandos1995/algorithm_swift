for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let result = input[0] / input[1]
    print(result * result)
}
