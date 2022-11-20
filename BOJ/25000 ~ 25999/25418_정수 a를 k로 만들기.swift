typealias bfsElement = (start: Int, d: Int)

let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], k = input[1]
var visited = [Bool](repeating: false, count: k + 1)

func bfs(start: Int, d: Int) {
    var queue = [bfsElement(start: start, d: d)]
    visited[start] = true
    var index = 0
    
    while queue.count > index {
        let startNode = queue[index].start
        let depth = queue[index].d
        if startNode == k {
            print(depth)
            break
        }
        if !visited[startNode + 1] {
            visited[startNode + 1] = true
            queue.append(bfsElement(start: startNode + 1, d: depth + 1))
        }
        if startNode * 2 > k {
            index += 1
            continue
        }
        
        if !visited[startNode * 2] {
            visited[startNode * 2] = true
            queue.append(bfsElement(start: startNode * 2, d: depth + 1))
        }
        index += 1
        
    }
}

bfs(start: a, d: 0)
