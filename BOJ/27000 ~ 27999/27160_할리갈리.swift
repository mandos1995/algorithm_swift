let n = Int(readLine()!)!
var dict: [String: Int] = [:]
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    dict[input[0], default: 0] += Int(input[1])!
}

print(dict.values.filter { $0 == 5 }.isEmpty ? "NO": "YES")
