enum OperType: Character {
    case plus = "+"
    case minus = "-"
    case multiply = "*"
    case division = "/"
    
    func calculate(_ n1: Int, _ n2: Int) -> Int {
        switch self {
        case .plus: return n1 + n2
        case .minus: return n2 - n1
        case .multiply: return n1 * n2
        case .division: return n2 / n1
        }
    }
}

let command = readLine()!
var stack: [Int] = []
for cmd in command {
    if let operType = OperType(rawValue: cmd) {
        stack.append(operType.calculate(stack.removeLast(), stack.removeLast()))
    } else {
        stack.append(Int(String(cmd))!)
    }
}
print(stack.first!)
