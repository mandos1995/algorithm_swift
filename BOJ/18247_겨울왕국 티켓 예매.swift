for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0], m = input[1]
    if n < 12 || m < 4 {
        print(-1)
    } else {
        print(11 * m + 4)
    }
}
