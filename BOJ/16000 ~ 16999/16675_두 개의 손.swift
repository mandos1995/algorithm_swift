enum HandType {
    case s, p, r
    
    init?(_ str: String) {
        switch str {
        case "S": self = .s
        case "P": self = .p
        case "R": self = .r
        default: return nil
        }
    }
    
    var value: Int {
        switch self {
        case .s: return 0
        case .p: return 1
        case .r: return 2
        }
    }
}
let input = readLine()!.split(separator: " ").map { HandType(String($0))! }
let ml = input[0], mr = input[1], tl = input[2], tr = input[3]
if ml == mr && [tl.value, tr.value].contains((ml.value + 2) % 3) {
    print("TK")
} else if tl == tr && [ml.value, mr.value].contains((tl.value + 2) % 3) {
    print("MS")
} else {
    print("?")
}
