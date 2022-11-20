let n = Int(readLine()!)!

var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
let dr = [-2, -2, 0, 0, 2, 2]
let dc = [-1, 1, -2, 2, -1, 1]

let input = readLine()!.split(separator: " ").map { Int($0)! }
let r1 = input[0], c1 = input[1], r2 = input[2], c2 = input[3]

var queue = [(r1, c1, 0)]
var index = 0

func isVaildCoord(r: Int, c: Int) -> Bool {
    return 0..<n ~= r && 0..<n ~= c
}
var answer = -1
while index < queue.count {
    let r = queue[index].0
    let c = queue[index].1
    let d = queue[index].2
    visited[r][c] = true
    if r == r2 && c == c2 {
        answer = d
        break
    }
    for i in 0..<6 {
        let nr = r + dr[i]
        let nc = c + dc[i]
        
        if isVaildCoord(r: nr, c: nc) && !visited[nr][nc] {
            visited[nr][nc] = true
            queue.append((nr, nc, d + 1))
        }
    }
    index += 1
}

print(answer)
