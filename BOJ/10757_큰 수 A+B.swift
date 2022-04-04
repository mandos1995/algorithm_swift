let input = readLine()!.split(separator: " ").map { String($0) }
let a = input[0], b = input[1]
func bigAdd(a: String, b: String) -> String {
    let longNumber = a.count >= b.count ? a.map { $0 } : b.map { $0 }
    var shortNumber = b.count <= a.count ? b.map { $0 } : a.map { $0 }
    var answer = [String](repeating: "0", count: longNumber.count)
    for _ in 0..<longNumber.count - shortNumber.count {
        shortNumber.insert("0", at: 0)
    }
    
    var up = 0
    for i in (0..<answer.count).reversed() {
        var total = Int(String(longNumber[i]))! + Int(String(shortNumber[i]))! + up
        if total > 9 {
            total %= 10
            up = 1
            answer[i] = "\(total)"
        } else {
            up = 0
            answer[i] = "\(total)"
        }
    }
    return up == 1 ? "1" + answer.reduce("", +) : answer.reduce("", +)
}
print(bigAdd(a: a, b: b))
