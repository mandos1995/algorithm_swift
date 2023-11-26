enum CharType: String {
    case d, b, q, p
    
    var reverseH: String {
        switch self {
        case .d: return "q"
        case .b: return "p"
        case .q: return "d"
        case .p: return "b"
        }
    }
    
    var reverseV: String {
        switch self {
        case .d: return "b"
        case .b: return "d"
        case .q: return "p"
        case .p: return "q"
        }
    }
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], type = input[1]
for _ in 0..<n {
    let word = readLine()!
    for w in word {
        let char = CharType(rawValue: String(w))!
        print(type == 1 ? char.reverseH : char.reverseV, terminator: "")
    }
    print()
}
