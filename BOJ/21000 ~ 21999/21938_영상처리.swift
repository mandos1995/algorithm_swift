let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var colors = [[Int]](repeating: [], count: n)
for i in 0..<n {
    let color = readLine()!.split(separator: " ").map { Int($0)! }
    for j in 0..<m {
        colors[i].append(color[j * 3..<j * 3 + 3].reduce(0, +) / 3)
    }
}

var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)
let t = Int(readLine()!)!

colors = colors.map { $0.map { $0 >= t ? 255 : 0 }}

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

func isValidCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<m ~= x
}

func bfs(y: Int, x: Int) {
    var queue = [(y, x)]
    visited[y][x] = true
    var index = 0
    while queue.count > index {
        let y = queue[index].0
        let x = queue[index].1
        
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if isValidCoord(y: ny, x: nx) && !visited[ny][nx] && colors[ny][nx] == 255 {
                queue.append((ny, nx))
                visited[ny][nx] = true
            }
        }
        index += 1
    }
}
var answer = 0
for y in 0..<n {
    for x in 0..<m {
        if colors[y][x] == 255 && !visited[y][x] {
            bfs(y: y, x: x)
            answer += 1
        }
    }
}

print(answer)
