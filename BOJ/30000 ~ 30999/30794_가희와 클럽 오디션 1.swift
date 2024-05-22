enum KeyType: String {
    case miss, bad, cool, great, perfect
    var value: Int {
        switch self {
        case .miss: return 0
        case .bad: return 200
        case .cool: return 400
        case .great: return 600
        case .perfect: return 1000
        }
    }
}

let input = readLine()!.split(separator: " ").map { String($0) }
let n = Int(input[0])!, key = KeyType(rawValue: input[1])!
print(n * key.value)
