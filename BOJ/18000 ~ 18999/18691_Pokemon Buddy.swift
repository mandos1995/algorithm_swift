let t = Int(readLine()!)!
for _ in 0..<t {
    solution()
}

enum GType: Int {
    case one=1, two, three
    var value: Int {
        switch self {
        case .one: return 1
        case .two: return 3
        case .three: return 5
        }
    }
}

func solution() {
    let input = readLine()!.split(separator: " ").map {Int($0)!}
    let g = input[0], c = input[1], e = input[2]
    print(max(0, (e - c) * GType(rawValue: g)!.value))
}
