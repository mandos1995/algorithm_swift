let n = Int(readLine()!)!
for _ in 0..<n {
    let word = readLine()!
    print(word.prefix(1).uppercased() + word.dropFirst())
}
