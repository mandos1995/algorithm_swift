enum Operator: String {
    case gt = ">"
    case gte = ">="
    case lt = "<"
    case lte = "<="
    case equal = "=="
    case notEqual = "!="
    
    init?(rawValue: String) {
        switch rawValue {
        case ">":
            self = .gt
        case ">=":
            self = .gte
        case "<":
            self = .lt
        case "<=":
            self = .lte
        case "==":
            self = .equal
        case "!=":
            self = .notEqual
        default:
            return nil
        }
    }
}

func isValidOperation(_ num1: Int, _ num2: Int, _ oper: Operator) -> Bool {
    switch oper {
    case .gt:
        return num1 > num2
    case .gte:
        return num1 >= num2
    case .lt:
        return num1 < num2
    case .lte:
        return num1 <= num2
    case .equal:
        return num1 == num2
    case .notEqual:
        return num1 != num2
    }
}

var index = 1

while let input = readLine()?.split(separator: " ").map({ String($0) }) {
    if let oper = Operator(rawValue: input[1]) {
        let leftNumber = Int(input[0])!, rightNumber = Int(input[2])!
        print("Case \(index): \(isValidOperation(leftNumber, rightNumber, oper))")
        index += 1
    } else {
        break
    }
    
}
