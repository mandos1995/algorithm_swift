let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0], m = nm[1]
let se = readLine()!.split(separator: " ").map { Int($0)! }
let s = se[0], e = se[1]

var move: [Int: [Int]] = [:]
for _ in 0..<m {
    let xy = readLine()!.split(separator: " ").map { Int($0)! }
    let x = xy[0], y = xy[1]
    move[x, default: []].append(y)
    move[y, default: []].append(x)
}

var visited = [Bool](repeating: false, count: 300_001)

var queue = [(s, 0)]
var index = 0

while queue.count > index {
    let x = queue[index].0
    let d = queue[index].1
    
    visited[x] = true
    
    if x == e {
        print(d)
        break
    }
    
    for i in [-1, 1] {
        if 0...300_000 ~= x + i && !visited[x + i] {
            visited[x + i] = true
            queue.append((x + i, d + 1))
        }
    }
    
    if !move[x, default: []].isEmpty {
        for i in move[x, default: []] {
            if 0...300_000 ~= i && !visited[i] {
                visited[i] = true
                queue.append((i, d + 1))
            }
        }
    }
    index += 1
}
