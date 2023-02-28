enum ScoreType {
    case ap, a, bp, b, cp, c, dp, d, f
    
    init?(score: String) {
        switch score {
        case "A+":
            self = .ap
        case "A0":
            self = .a
        case "B+":
            self = .bp
        case "B0":
            self = .b
        case "C+":
            self = .cp
        case "C0":
            self = .c
        case "D+":
            self = .dp
        case "D0":
            self = .d
        case "F":
            self = .f
        default:
            return nil
        }
    }
    
    var grade: Double {
        switch self {
        case .ap:
            return 4.5
        case .a:
            return 4
        case .bp:
            return 3.5
        case .b:
            return 3
        case .cp:
            return 2.5
        case .c:
            return 2
        case .dp:
            return 1.5
        case .d:
            return 1
        case .f:
            return 0
        }
    }
}

var totalScore: Double = 0
var totalGrade: Double = 0

for _ in 0..<20 {
    let input = readLine()!.split(separator: " ")
    if let score = ScoreType(score: String(input[2])) {
        totalGrade += Double(input[1])! * score.grade
        totalScore += Double(input[1])!
    }
}

print(totalGrade / totalScore)
