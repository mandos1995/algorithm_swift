import Foundation
enum NumberType: Int, CaseIterable {
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    var rawString: String {
        switch self {
        case .zero:
            return "zero"
        case .one:
            return "one"
        case .two:
            return "two"
        case .three:
            return "three"
        case .four:
            return "four"
        case .five:
            return "five"
        case .six:
            return "six"
        case .seven:
            return "seven"
        case .eight:
            return "eight"
        case .nine:
            return "nine"
        }
    }
}

func solution(_ numbers:String) -> Int64 {
    var numbers = numbers
    NumberType.allCases.forEach {
        numbers = numbers.replacingOccurrences(of: $0.rawString, with: "\($0.rawValue)")
    }
    return Int64(numbers)!
}
