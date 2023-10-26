enum ChessType: String {
    case k, p, n, b, r, q, dot = "."
    var score: Int {
        switch self {
        case .k: return 0
        case .p: return 1
        case .n: return 3
        case .b: return 3
        case .r: return 5
        case .q: return 9
        case .dot: return 0
        }
    }
}

var w = 0
var b = 0
for _ in 0..<8 {
    let line = readLine()!
    for l in line {
        if l.isUppercase {
            w += ChessType(rawValue: String(l.lowercased()))!.score
        } else {
            b += ChessType(rawValue: String(l))!.score
        }
    }
}
print(w - b)
