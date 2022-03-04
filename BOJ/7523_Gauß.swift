for i in 1...Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    print("Scenario #\(i):")
    print((b - a + 1) * (a + b) / 2)
    print()
}
