let input = readLine()!.split(separator: " ").map { Int($0)! }
let start = input[0], target = input[1]
var visited = [Bool](repeating: false, count: 1000001)

func isVaildCoord(x: Int) -> Bool {
    return 0 <= x && x <= 1000000
}

var queue = [(start, 0)]
var index = 0
while index < queue.count {
    let x = queue[index].0
    let d = queue[index].1
    visited[x] = true
    if x == target {
        print(d)
        break
    }
    for i in [-1, 1, x] {
        let nx = x + i
        let nd = d + 1
        
        if isVaildCoord(x: nx) && !visited[nx] {
            visited[nx] = true
            queue.append((nx, nd))
        }
    }
    index += 1
}
