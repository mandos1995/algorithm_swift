import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let r = input[0], c = input[1]
let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]
var graph: [[Character]] = []
for _ in 0..<r {
    graph.append(readLine()!.map { $0 })
}

for y in 0..<r {
    for x in 0..<c {
        if graph[y][x] == "S" {
            for i in 0..<4 {
                let ny = y + dy[i]
                let nx = x + dx[i]
                
                if !(0..<r ~= ny && 0..<c ~= nx) {
                    continue
                }
                if graph[ny][nx] == "W" {
                    print(0)
                    exit(0)
                }
                if graph[ny][nx] == "." {
                    graph[ny][nx] = "D"
                }
            }
        }
    }
}

print(1)
graph.forEach { print(String($0)) }
