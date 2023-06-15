enum Oper: String {
    case plus = "+"
    case multiply = "*"
    case minus = "-"
    case divide = "/"
    
    func calculate(_ a: Int, _ b: Int) -> Int {
        switch self {
        case .plus:
            return a + b
        case .multiply:
            return a * b
        case .minus:
            return a - b
        case .divide:
            return a / b
        }
    }
    
}

func solution(_ oper: String) {
    let input = oper.split(separator: " ").map { String($0) }
    let a = Int(input[0])!, b = Int(input[2])!, result = Int(input[4])!
    let oper = Oper(rawValue: input[1])!
    print(oper.calculate(a, b) == result ? "correct" : "wrong answer")
}

let t = Int(readLine()!)!
for _ in 0..<t { solution(readLine()!) }
