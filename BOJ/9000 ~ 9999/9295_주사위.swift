let n = Int(readLine()!)!
for i in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    print("Case \(i + 1): \(input[0] + input[1])")
}
