let n = Int(readLine()!)!
var graph = [[String]](repeating: [String](repeating: ".", count: n), count: n)
let k = Int(readLine()!)!
for _ in 0..<k {
    let input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
    let y = input[0], x = input[1]
    graph[y][x] = "a"
}
let l = Int(readLine()!)!
var timesDirection: [Int: String] = [:]
for _ in 0..<l {
    let input = readLine()!.split(separator: " ").map { String($0) }
    timesDirection[Int(input[0])!] = input[1]
}

var snakePosition = [(0, 0)]

func isBreakWall(y: Int, x: Int) -> Bool {
    return !(0 <= y && y < n && 0 <= x && x < n)
}

func isBreakMine(snake: [(Int, Int)]) -> Bool {
    for i in 0..<snakePosition.count - 1 {
        for j in i + 1..<snakePosition.count {
            if snakePosition[i] == snakePosition[j] {
                return true
            }
        }
    }
    return false
}

var answer = 0

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]
var d = 0

while true {
    answer += 1
    let head = snakePosition[snakePosition.count - 1]
    
    if isBreakWall(y: head.0 + dy[d], x: head.1 + dx[d]) {
        print(answer)
        break
    }
    
    if graph[head.0 + dy[d]][head.1 + dx[d]] == "a" {
        graph[head.0 + dy[d]][head.1 + dx[d]] = "."
        snakePosition.append((head.0 + dy[d], head.1 + dx[d]))
        if isBreakMine(snake: snakePosition) {
            print(answer)
            break
        }
    } else {
        snakePosition.append((head.0 + dy[d], head.1 + dx[d]))
        if isBreakMine(snake: snakePosition) {
            print(answer)
            break
        }
        _ = snakePosition.removeFirst()
    }
    
    
    if timesDirection[answer] != nil {
        d = timesDirection[answer] == "D" ? d + 1 : d - 1
        if d > 3 {
            d -= 4
        } else if d < 0 {
            d += 4
        }
    }
}

