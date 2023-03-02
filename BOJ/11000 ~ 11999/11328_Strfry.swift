func solution() {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let dict1 = Dictionary(input[0].map { ($0, 1) }, uniquingKeysWith: +)
    let dict2 = Dictionary(input[1].map { ($0, 1) }, uniquingKeysWith: +)
    print(dict1 == dict2 ? "Possible" : "Impossible")
}

for _ in 0..<Int(readLine()!)! { solution() }
