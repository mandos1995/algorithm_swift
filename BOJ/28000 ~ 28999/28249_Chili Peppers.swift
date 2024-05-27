enum JobType: String {
    case Poblano
    case Mirasol
    case Serrano
    case Cayenne
    case Thai
    case Habanero
    
    var value: Int {
        switch self {
        case .Poblano: return 1500
        case .Mirasol: return 6000
        case .Serrano: return 15500
        case .Cayenne: return 40000
        case .Thai: return 75000
        case .Habanero: return 125000
        }
    }
}
var answer = 0
for _ in 0..<Int(readLine()!)! {
    answer += JobType(rawValue: readLine()!)!.value
}
print(answer)
