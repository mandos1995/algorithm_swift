let n = Int(readLine()!)!
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    print("You get \(input[0] / input[1]) piece(s) and your dad gets \(input[0] % input[1]) piece(s).")
}
