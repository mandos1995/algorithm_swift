let n = Int(readLine()!)!
var dict: [String: Int] = [:]
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let name = input[0], score = Int(input[1])!
    dict[name] = score
}

print(dict.sorted { $0.value == $1.value ? $0.key < $1.key : $0.value > $1.value }.first!.key)
