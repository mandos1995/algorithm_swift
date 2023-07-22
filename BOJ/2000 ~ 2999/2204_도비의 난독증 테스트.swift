while let n = Int(readLine()!), n != 0 {
    var words: [String] = []
    for _ in 0..<n {
        words.append(readLine()!)
    }
    print(words.sorted { $0.uppercased() < $1.uppercased() }.first! )
}
