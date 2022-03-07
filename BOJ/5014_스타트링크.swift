let input = readLine()!.split(separator: " ").map { Int($0)! }
let f = input[0], s = input[1], g = input[2], u = input[3], d = input[4]

func isVaildCoood(x: Int) -> Bool {
    return 0 < x && x <= f
}
var queue = [(s, 0)]
var visited = [Bool](repeating: false, count: f + 1)
let dx = [u, -1 * d]
var isMoved = false
func bfs() {
    var index = 0
    while index < queue.count {
        let x = queue[index].0
        let d = queue[index].1
        visited[x] = true
        if x == g {
            print(d)
            isMoved = true
            break
        }
        for i in 0..<2 {
            let nx = x + dx[i]
            let nd = d + 1
            
            if isVaildCoood(x: nx) && !visited[nx] {
                visited[nx] = true
                queue.append((nx, nd))
            }
        }
        index += 1
    }
}
bfs()

if !isMoved {
    print("use the stairs")
}
