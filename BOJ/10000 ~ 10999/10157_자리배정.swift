let input = readLine()!.split(separator: " ").map { Int($0)! }
let c = input[0], r = input[1]
let target = Int(readLine()!)!

var graph = [[Int]](repeating: [Int](repeating: 0, count: c), count: r)

let dx = [0, 1, 0, -1]
let dy = [1, 0 ,-1, 0]

func isValidCoord(y: Int, x: Int) -> Bool {
    return 0..<r ~= y && 0..<c ~= x
}

var num = 1
var i = 0
var y = -1
var x = 0

if target > c * r {
    print(0)
} else {
    while num <= c * r {
        var ny = y + dy[i]
        var nx = x + dx[i]
        
        if !(isValidCoord(y: ny, x: nx) && graph[ny][nx] == 0) {
            i = (i + 1) % 4
            ny = y + dy[i]
            nx = x + dx[i]
        }
        
        graph[ny][nx] = num
        if num == target {
            print(nx + 1, ny + 1)
            break
        }
        num += 1
        y = ny
        x = nx
    }
}
