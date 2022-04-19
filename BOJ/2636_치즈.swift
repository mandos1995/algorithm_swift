let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}
let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<m ~= x
}

func airDivision() {
    var queue = [(0, 0)]
    var index = 0
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)
    while index < queue.count {
        let y = queue[index].0
        let x = queue[index].1
        graph[y][x] = -1
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if isVaildCoord(y: ny, x: nx) && !visited[ny][nx] && graph[ny][nx] <= 0 {
                visited[ny][nx] = true
                graph[ny][nx] = -1
                queue.append((ny, nx))
            }
        }
        index += 1
    }
}

var cheesePostion: [(Int, Int)] = []
func getCheesePosition() {
    cheesePostion.removeAll()
    for y in 0..<n {
        for x in 0..<m {
            if graph[y][x] == 1 {
                cheesePostion.append((y, x))
            }
        }
    }
}
func cheeseDisappear() {
    var index = 0
    while index < cheesePostion.count {
        let y = cheesePostion[index].0
        let x = cheesePostion[index].1
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            if isVaildCoord(y: ny, x: nx) && graph[ny][nx] == -1 {
                graph[y][x] = 0
                break
            }
        }
        index += 1
    }
}
var time = 0
var cheeseCount = 0
while true {
    airDivision()
    getCheesePosition()
    if cheesePostion.isEmpty {
        print(time)
        print(cheeseCount)
        break
    }
    cheeseDisappear()
    time += 1
    cheeseCount = cheesePostion.count
}
