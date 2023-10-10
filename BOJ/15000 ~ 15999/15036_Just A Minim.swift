enum Note: Int {
    case breve = 0
    case semibreve = 1
    case minim = 2
    case crotchet = 4
    case quaver = 8
    case semiquaver = 16
    
    var value: Double {
        switch self {
        case .breve: return 2
        case .semibreve: return 1
        case .minim: return 0.5
        case .crotchet: return 0.25
        case .quaver: return 0.125
        case .semiquaver: return 0.0625
        }
    }
}

let n = Int(readLine()!)!
let answer = readLine()!.split(separator: " ").map { Note(rawValue: Int($0)!)!.value }.reduce(0, +)
print(answer)
