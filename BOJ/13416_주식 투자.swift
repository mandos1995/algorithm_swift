for _ in 0..<Int(readLine()!)! {
    var result = 0
    for _ in 0..<Int(readLine()!)! {
        result += readLine()!.split(separator: " ").map { Int($0)! }.filter { $0 >= 0 }.max() ?? 0
    }
    print(result)
}
