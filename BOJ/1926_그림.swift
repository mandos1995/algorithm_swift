let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var board: [[Int]] = []
for _ in 0..<n {
    board.append(readLine()!.split(separator: " ").map { Int($0)! })
}

var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<m ~= x
}

func bfs(y: Int, x: Int) -> Int {
    var queue = [(y, x)]
    var index = 0
    var answer = 1
    visited[y][x] = true
    
    while queue.count > index {
        let y = queue[index].0
        let x = queue[index].1
        
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if isVaildCoord(y: ny, x: nx) && board[ny][nx] == 1 && !visited[ny][nx] {
                visited[ny][nx] = true
                answer += 1
                queue.append((ny, nx))
            }
        }
        index += 1
    }
    return answer
}

var answer = 0
var count = 0
for y in 0..<n {
    for x in 0..<m {
        if board[y][x] == 1 && !visited[y][x] {
            answer = max(bfs(y: y, x: x), answer)
            count += 1
        }
    }
}

print(count)
print(answer)
