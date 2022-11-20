let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var visited = [Bool](repeating: false, count: 100001)
var prevWay = [Int](repeating: 0, count: 100001)
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
            var idx = k
            var prevWayArray = [k]
            while idx != n {
                prevWayArray.append(prevWay[idx])
                idx = prevWay[idx]
            }
            prevWayArray.reversed().forEach {
                print($0, terminator: " ")
            }
            break
        }
        for i in [-1, 1, x] {
            let nx = x + i
            if isVaildCoord(x: nx) && !visited[nx] {
                visited[nx] = true
                prevWay[nx] = x
                queue.append((nx, d + 1))
            }
        }
        index += 1
    }
}
bfs(x: n)
