for _ in 0..<Int(readLine()!)! {
    for _ in 0..<Int(readLine()!)! {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        print(input.reduce(0, +), input.reduce(1, *))
    }
}
