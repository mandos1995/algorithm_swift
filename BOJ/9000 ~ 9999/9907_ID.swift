enum NumberType: Int {
    case J = 0, A, B, C, D, E, F, G, H, I, Z
    var alpha: String {
        switch self {
        case .J: return "J"
        case .A: return "A"
        case .B: return "B"
        case .C: return "C"
        case .D: return "D"
        case .E: return "E"
        case .F: return "F"
        case .G: return "G"
        case .H: return "H"
        case .I: return "I"
        case .Z: return "Z"
        }
    }
}
let n = readLine()!.map { Int(String($0))! }
var weight = [2, 7, 6, 5, 4, 3, 2]
var value = 0

for i in 0..<n.count {
    value += n[i] * weight[i]
}

print(NumberType(rawValue: value % 11)!.alpha)
