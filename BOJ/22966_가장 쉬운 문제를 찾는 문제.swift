let n = Int(readLine()!)!
var dict: [String: Int] = [:]
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    dict[input[0]] = Int(input[1])!
}
let sortedDictionary = dict.sorted { $0.1 < $1.1 }
print(sortedDictionary[0].key)
