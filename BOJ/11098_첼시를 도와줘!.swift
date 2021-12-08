for _ in 0..<Int(readLine()!)! {
    var dict: [String: Int] = [:]
    for _ in 0..<Int(readLine()!)! {
        let input = readLine()!.split(separator: " ").map { String($0) }
        dict[input[1]] = Int(input[0]) ?? 0
    }
    let sortedDictionary = dict.sorted {$0.value > $1.value }
    print(sortedDictionary[0].key)
}
