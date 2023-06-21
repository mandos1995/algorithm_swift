import Foundation

func solution(_ ineq:String, _ eq:String, _ n:Int, _ m:Int) -> Int {
    return OperType(rawValue: "\(ineq)\(eq)")!.isValidate(n, m) ? 1 : 0
}

enum OperType: String {
    case ge, gt, le, lt
    
    init?(rawValue: String) {
        switch rawValue {
        case ">=":
            self = .ge
        case "<=":
            self = .le
        case ">!":
            self = .gt
        case "<!":
            self = .lt
        default:
            return nil
        }
    }
    
    func isValidate(_ n1: Int, _ n2: Int) -> Bool {
        switch self {
        case .ge:
            return n1 >= n2
        case .gt:
            return n1 > n2
        case .le:
            return n1 <= n2
        case .lt:
            return n1 < n2
        }
    }
    
}
