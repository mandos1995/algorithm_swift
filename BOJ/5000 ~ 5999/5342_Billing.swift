enum BillType: String {
    case paper
    case printer
    case planners
    case binders
    case calendar
    case notebooks
    case ink
    
    var cost: Double {
        switch self {
        case .paper: return 57.99
        case .printer: return 120.5
        case .planners: return 31.25
        case .binders: return 22.5
        case .calendar: return 10.95
        case .notebooks: return 11.2
        case .ink: return 66.95
        }
    }
}
var answer: Double = 0
while let bill = BillType(rawValue: readLine()!.lowercased()) {
    answer += bill.cost
}
print("$\(answer)")
