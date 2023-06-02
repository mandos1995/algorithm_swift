let input = readLine()!.split(separator: " ").map { Int($0)! }
let r = input[0], c = input[1]
let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]
let INF = 1_234_567_890
var graph: [[Character]] = []
var fireTime = [[Int]](repeating: [Int](repeating: INF, count: c), count: r)
var visited = [[Bool]](repeating: [Bool](repeating: false, count: c), count: r)

for _ in 0..<r {
    graph.append(readLine()!.map { $0 })
}

var fireQueue: [(Int, Int, Int)] = []
var start = (0, 0)
for y in 0..<r {
    for x in 0..<c {
        if graph[y][x] == "J" {
            start = (y, x)
        }
        if graph[y][x] == "F" {
            fireQueue.append((y, x, 0))
        }
    }
}

var answer = "IMPOSSIBLE"


func fireSpread() {
    var index = 0
    
    while fireQueue.count > index {
        let y = fireQueue[index].0
        let x = fireQueue[index].1
        let d = fireQueue[index].2
        
        fireTime[y][x] = d
        
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            guard 0..<r ~= ny, 0..<c ~= nx else { continue }
            
            if fireTime[ny][nx] == INF && graph[ny][nx] != "#" {
                fireTime[ny][nx] = d + 1
                fireQueue.append((ny, nx, d + 1))
            }
        }
        index += 1
    }
}

func move() {
    var queue = [(start.0, start.1, 1)]
    var index = 0
    
main: while queue.count > index {
        let y = queue[index].0
        let x = queue[index].1
        let d = queue[index].2
        
        visited[y][x] = true
        
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if !(0..<r ~= ny) || !(0..<c ~= nx) {
                answer = "\(d)"
                break main
            }
            
            if graph[ny][nx] == "." && fireTime[ny][nx] > d && !visited[ny][nx] {
                visited[ny][nx] = true
                queue.append((ny, nx, d + 1))
            }
        }
        index += 1
    }
}

fireSpread()
move()

print(answer)
