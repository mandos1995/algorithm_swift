let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var visited = [Bool](repeating: false, count: 100001)

func isVaildCoord(x: Int) -> Bool {
    return 0..<100001 ~= x
}
var count = 0
var minValue = Int.max
func bfs(x: Int) {
    var queue = [(x, 0)]
    var index = 0
    while index < queue.count {
        let x = queue[index].0
        let d = queue[index].1
        visited[x] = true
        
        if x == k {
            minValue = d
            count += 1
        }
        
        if minValue < d {
            break
        }
        for i in [-1, 1, x] {
            let nx = x + i
            if isVaildCoord(x: nx) && !visited[nx] {
                queue.append((nx, d + 1))
            }
        }
        index += 1
    }
    print(minValue)
    print(count)
}
bfs(x: n)
