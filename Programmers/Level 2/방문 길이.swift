import Foundation

enum DirectionType: String {
    case U, D, R, L
    var coord: (Int, Int) {
        switch self {
        case .U:
            return (-1, 0)
        case .D:
            return (1, 0)
        case .R:
            return (0, 1)
        case .L:
            return (0, -1)
        }
    }
    var dir: Int {
        switch self {
        case .U:
            return 0
        case .D:
            return 1
        case .R:
            return 2
        case .L:
            return 3
        }
    }
    var reverseDir: Int {
        switch self {
        case .U:
            return 1
        case .D:
            return 0
        case .R:
            return 3
        case .L:
            return 2
        }
    }
}

func isValidCoord(_ y: Int, _ x: Int) -> Bool {
    return 0...10 ~= y && 0...10 ~= x
}

func solution(_ dirs:String) -> Int {
    var visited = [[[Bool]]](repeating: [[Bool]](repeating: [Bool](repeating: false, count: 11), count: 11), count: 4)
    var y = 5
    var x = 5
    var answer = 0
    for dir in dirs {
        let direction = DirectionType(rawValue: String(dir))!
        let coord = direction.coord
        y += coord.0
        x += coord.1
        if !isValidCoord(y, x) {
            y -= coord.0
            x -= coord.1
            continue
        }
        if !visited[direction.dir][y][x] {
            visited[direction.dir][y][x] = true
            visited[direction.reverseDir][y - coord.0][x - coord.1] = true
            answer += 1
        }
    }
    return answer
}
