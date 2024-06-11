for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0]
    var flag = true
    for i in 1..<n {
        if !(input[i] * 2 <= input[i + 1]) { flag = false; break }
    }
    print("Denominations: \(input[1...].map { String($0) }.joined(separator: " "))")
    print(flag ? "Good coin denominations!" : "Bad coin denominations!")
    print()
}
