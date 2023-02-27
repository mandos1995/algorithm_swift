func transPosition(_ position: String) -> (Int, Int) {
    let position = position.map { $0 }
    return (Int(position[0].asciiValue!) - 65, Int(String(position[1]))! - 1)
}

func transPosition(_ position: (Int, Int)) -> String {
    return "\((UnicodeScalar(position.0 + 65))!)\(position.1 + 1)"
}

enum MoveType: String {
    case R, L, B, T, RT, LT, RB, LB
    
    var direction: (Int, Int) {
        switch self {
        case .R:
            return (1, 0)
        case .L:
            return (-1, 0)
        case .B:
            return (0, -1)
        case .T:
            return (0, 1)
        case .RT:
            return (1, 1)
        case .LT:
            return (-1, 1)
        case .RB:
            return (1, -1)
        case .LB:
            return (-1, -1)
        }
    }
}

func isValidCoord(position: (y: Int, x: Int)) -> Bool {
    return 0..<8 ~= position.y && 0..<8 ~= position.x
}

let input = readLine()!.split(separator: " ").map { String($0) }
var kingPosition = transPosition(input[0])
var stonePosition = transPosition(input[1])
let n = Int(input[2])!

for _ in 0..<n {
    let moveType = MoveType(rawValue: readLine()!)!
    let direction = moveType.direction
    if isValidCoord(position: (kingPosition.0 + direction.0, kingPosition.1 + direction.1)) {
        if (kingPosition.0 + direction.0, kingPosition.1 + direction.1) == stonePosition {
            if isValidCoord(position: (stonePosition.0 + direction.0, stonePosition.1 + direction.1)) {
                kingPosition = (kingPosition.0 + direction.0, kingPosition.1 + direction.1)
                stonePosition = (stonePosition.0 + direction.0, stonePosition.1 + direction.1)
            }
        } else {
            kingPosition = (kingPosition.0 + direction.0, kingPosition.1 + direction.1)
        }
    }
}
print(transPosition(kingPosition))
print(transPosition(stonePosition))
