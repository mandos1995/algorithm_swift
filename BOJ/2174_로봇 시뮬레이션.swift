let input = readLine()!.split(separator: " ").map { Int($0)! }
let x = input[0], y = input[1]
let command = readLine()!.split(separator: " ").map { Int($0)! }
let n = command[0], m = command[1]
let direction = ["N", "E", "S", "W"]

let dy = [1, 0, -1, 0]
let dx = [0, 1, 0, -1]

var visited = [[Bool]](repeating: [Bool](repeating: false, count: x), count: y)

func isVaildCoord(nextY: Int, nextX: Int) -> Bool {
    return 0..<y ~= nextY && 0..<x ~= nextX
}

class Robot {
    let name: Int
    var y: Int
    var x: Int
    var direction: Int
    
    init(name: Int, y: Int, x: Int, direction: Int) {
        self.name = name
        self.y = y
        self.x = x
        self.direction = direction
    }
}
var robots: [Robot] = []

for i in 1...n {
    let input = readLine()!.split(separator: " ")
    let x = Int(input[0])! - 1, y = Int(input[1])! - 1, dir = direction.firstIndex(of: String(input[2]))!
    visited[y][x] = true
    robots.append(Robot(name: i, y: y, x: x, direction: dir))
}

var isSuccess = true

main:for _ in 0..<m {
    let command = readLine()!.split(separator: " ")
    let name = Int(command[0])!, cmd = String(command[1]), step = Int(command[2])!
    let currentRobot = robots.first { $0.name == name }!
    switch cmd {
    case "L":
        for _ in 0..<step % 4 {
            currentRobot.direction = currentRobot.direction == 0 ? 3 : currentRobot.direction - 1
        }
    case "R":
        for _ in 0..<step % 4 {
            currentRobot.direction = currentRobot.direction == 3 ? 0 : currentRobot.direction + 1
        }
    case "F":
        for _ in 0..<step {
            let ny = currentRobot.y + dy[currentRobot.direction]
            let nx = currentRobot.x + dx[currentRobot.direction]
            
            if !isVaildCoord(nextY: ny, nextX: nx) {
                print("Robot \(currentRobot.name) crashes into the wall")
                isSuccess = false
                break main
            }
            
            if visited[ny][nx] {
                let robotName = robots.first { $0.y == ny && $0.x == nx }!.name
                print("Robot \(currentRobot.name) crashes into robot \(robotName)")
                isSuccess = false
                break main
            }
            visited[currentRobot.y][currentRobot.x] = false
            currentRobot.y = currentRobot.y + dy[currentRobot.direction]
            currentRobot.x = currentRobot.x + dx[currentRobot.direction]
            visited[currentRobot.y][currentRobot.x] = true
        }
    default:
        continue
    }
}

if isSuccess {
    print("OK")
}
