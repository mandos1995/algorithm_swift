func solution() {
    var input = readLine()!.map { String($0) }
    input = input + input
    var a: [String] = [], b: [String] = []
    for i in 0..<input.count {
        if i % 2 == 0 {
            if a.contains(input[i]) { break }
            a.append(input[i])
        } else {
            if b.contains(input[i]) { break }
            b.append(input[i])
        }
    }
    print(a.joined(separator: ""))
    print(b.joined(separator: ""))
}


let t = Int(readLine()!)!
for _ in 0..<t {
    solution()
}
