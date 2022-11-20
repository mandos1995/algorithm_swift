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

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var cache = [[String]](repeating: [String](repeating: "0", count: m + 1), count: n + 1)

for i in 1...n {
    for j in 0...m {
        if j == 0 || i == j {
            cache[i][j] = "1"
            continue
        }
        cache[i][j] = bigAdd(a: cache[i - 1][j - 1], b: cache[i - 1][j])
    }
}

print(cache[n][m])
