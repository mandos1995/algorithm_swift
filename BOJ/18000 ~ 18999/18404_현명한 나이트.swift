let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var visited = [[Int]](repeating: [Int](repeating: -1, count: n), count: n)
let yx = readLine()!.split(separator: " ").map { Int($0)! - 1 }
let y = yx[0], x = yx[1]

let dy = [2, 1, -1, -2, -2 ,-1, 1, 2]
let dx = [1, 2, 2, 1, -1, -2, -2, -1]

func isValidCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<n ~= x
}

var queue = [(y, x, 0)]
var index = 0

while queue.count > index {
    let y = queue[index].0
    let x = queue[index].1
    let d = queue[index].2
    visited[y][x] = d
    
    for i in 0..<8 {
        let ny = y + dy[i]
        let nx = x + dx[i]
        if isValidCoord(y: ny, x: nx) && visited[ny][nx] == -1 {
            visited[ny][nx] = d + 1
            queue.append((ny, nx, d + 1))
        }
    }
    index += 1
}

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
    let y = input[0], x = input[1]
    print(visited[y][x], terminator: " ")
}
