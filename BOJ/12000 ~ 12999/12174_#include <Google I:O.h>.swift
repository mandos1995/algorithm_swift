let t = Int(readLine()!)!
for i in 1...t {
    print("Case #\(i): \(solution())")
}

func solution() -> String {
    let b = Int(readLine()!)!
    let str = readLine()!.map { $0 == "O" ? "0" : "1" }
    var answer = ""
    for i in stride(from: 0, to: b * 8, by: 8) {
        answer += String(UnicodeScalar(Int(str[i..<i + 8].reduce("", +), radix: 2)!)!)
    }
    return answer
}
