let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

func solution(n: Int) {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let r = input[0], c = input[1]
    var graph: [[Int]] = []
    for _ in 0..<r {
        graph.append(readLine()!.map { Int(String($0))! })
    }
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: c), count: r)
    
    func isValidCoord(_ y: Int, _ x: Int) -> Bool {
        return 0..<r ~= y && 0..<c ~= x
    }
    
    func bfs(y: Int, x: Int) {
        visited[y][x] = true
        var queue = [(y, x)]
        var index = 0
        while queue.count > index {
            let y = queue[index].0
            let x = queue[index].1
            
            for i in 0..<4 {
                let ny = y + dy[i]
                let nx = x + dx[i]
                
                if isValidCoord(ny, nx) && !visited[ny][nx] && graph[ny][nx] == 1 {
                    visited[ny][nx] = true
                    queue.append((ny, nx))
                }
            }
            index += 1
        }
    }
    let z = Int(readLine()!)!
    print("Case #\(n):")
    for _ in 0..<z {
        let command = readLine()!.split(separator: " ").map { String($0) }
        
        if command.first! == "Q" {
            visited = [[Bool]](repeating: [Bool](repeating: false, count: c), count: r)
            var answer = 0
            for y in 0..<r {
                for x in 0..<c {
                    if graph[y][x] == 1 && !visited[y][x] {
                        answer += 1
                        bfs(y: y, x: x)
                    }
                }
            }
            print(answer)
        } else {
            let y = Int(command[1])!, x = Int(command[2])!, n = Int(command[3])!
            graph[y][x] = n
        }
    }
}

let t = Int(readLine()!)!
for i in 1...t { solution(n: i) }
