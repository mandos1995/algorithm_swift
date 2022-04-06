let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var visited = [Bool](repeating: false, count: 100001)

func isVaildCoord(x: Int) -> Bool {
    return 0..<100001 ~= x
}

func bfs(x: Int) {
    var queue = [(x, 0)]
    var index = 0
    while index < queue.count {
        let x = queue[index].0
        let d = queue[index].1
        visited[x] = true
        
        if x == k {
            print(d)
            break
        }
        for i in [-1, 1, x] {
            let dx = x + i
            
            if isVaildCoord(x: dx) && !visited[dx] {
                visited[dx] = true
                if i == x {
                    queue.insert((dx, d), at: index + 1)
                } else {
                    queue.append((dx, d + 1))
                }
            }
        }
        index += 1
    }
}
bfs(x: n)
