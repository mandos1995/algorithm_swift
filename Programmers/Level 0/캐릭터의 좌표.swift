import Foundation

enum KeyType: String {
    case up, down, left, right
    
    var coord: (Int, Int) {
        switch self {
        case .up:
            return (0, 1)
        case .down:
            return (0, -1)
        case .left:
            return (-1, 0)
        case .right:
            return (1, 0)
        }
    }
}

func isValidCoord(boardY: Int, boardX: Int, userY: Int, userX: Int) -> Bool {
    return -boardY...boardY ~= userY && -boardX...boardX ~= userX
}


func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    let keyInputs = keyinput.map { KeyType(rawValue: $0)! }
    var userPosition: [Int] = [0, 0]
    for keyInput in keyInputs {
        let coord = keyInput.coord
        let nextPosition = (userPosition[0] + coord.0, userPosition[1] + coord.1)
        if isValidCoord(boardY: board[1] / 2, boardX: board[0] / 2, userY: nextPosition.1, userX: nextPosition.0) {
            userPosition = [nextPosition.0, nextPosition.1]
        }
    }
    return userPosition
}
