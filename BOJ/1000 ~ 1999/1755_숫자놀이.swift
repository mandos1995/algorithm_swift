enum NumberType: String {
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case zero
    
    init?(num: Int) {
        switch num {
        case 0: self = .zero
        case 1: self = .one
        case 2: self = .two
        case 3: self = .three
        case 4: self = .four
        case 5: self = .five
        case 6: self = .six
        case 7: self = .seven
        case 8: self = .eight
        case 9: self = .nine
        default: return nil
        }
    }
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let m = input[0], n = input[1]
let array = [Int](m...n).sorted {
    let a = "\($0)".map { Int(String($0))! }
    let b = "\($1)".map { Int(String($0))! }
    return a.map { NumberType(num: $0)!.rawValue }.joined() < b.map { NumberType(num: $0)!.rawValue }.joined()
}

for i in 0..<array.count {
    if i % 10 == 9 {
        print(array[i])
    } else {
        print(array[i], terminator: " ")
    }
}
