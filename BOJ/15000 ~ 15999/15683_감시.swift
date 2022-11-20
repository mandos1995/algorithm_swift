let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}
var cctvPosition: [(Int, Int, Int)] = []

for y in 0..<n {
    for x in 0..<m {
        if graph[y][x] > 0 && graph[y][x] < 6 {
            cctvPosition.append((y, x, graph[y][x]))
        }
    }
}

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<m ~= x
}

func search(y: Int, x: Int, direction: Int) {
    switch direction {
        // 상
    case 0:
        var dy = y - 1
        while true {
            if isVaildCoord(y: dy, x: x) && graph[dy][x] != 6 {
                graph[dy][x] = -1
            } else {
                break
            }
            dy -= 1
        }
        // 하
    case 1:
        var dy = y + 1
        while true {
            if isVaildCoord(y: dy, x: x) && graph[dy][x] != 6 {
                graph[dy][x] = -1
            } else {
                break
            }
            dy += 1
        }
        // 좌
    case 2:
        var dx = x - 1
        while true {
            if isVaildCoord(y: y, x: dx) && graph[y][dx] != 6 {
                graph[y][dx] = -1
            } else {
                break
            }
            dx -= 1
        }
        // 우
    default:
        var dx = x + 1
        while true {
            if isVaildCoord(y: y, x: dx) && graph[y][dx] != 6 {
                graph[y][dx] = -1
            } else {
                break
            }
            dx += 1
        }
    }
    
}
var answer = 1_000_000_000
func dfs(array: [[Int]], d: Int) {
    if d == cctvPosition.count {
        var count = 0
        for y in 0..<n {
            for x in 0..<m {
                if array[y][x] == 0 {
                    count += 1
                }
            }
        }
        answer = min(answer, count)
        return
    }
    
    let y = cctvPosition[d].0
    let x = cctvPosition[d].1
    let cctvNumber = cctvPosition[d].2
    
    switch cctvNumber {
    case 1:
        search(y: y, x: x, direction: 0)
        dfs(array: graph, d: d + 1)
        graph = array
        
        search(y: y, x: x, direction: 1)
        dfs(array: graph, d: d + 1)
        graph = array
        
        search(y: y, x: x, direction: 2)
        dfs(array: graph, d: d + 1)
        graph = array
        
        search(y: y, x: x, direction: 3)
        dfs(array: graph, d: d + 1)
        graph = array
    case 2:
        search(y: y, x: x, direction: 0)
        search(y: y, x: x, direction: 1)
        dfs(array: graph, d: d + 1)
        graph = array
        
        search(y: y, x: x, direction: 2)
        search(y: y, x: x, direction: 3)
        dfs(array: graph, d: d + 1)
        graph = array
    case 3:
        search(y: y, x: x, direction: 0)
        search(y: y, x: x, direction: 3)
        dfs(array: graph, d: d + 1)
        graph = array
        
        search(y: y, x: x, direction: 3)
        search(y: y, x: x, direction: 1)
        dfs(array: graph, d: d + 1)
        graph = array
        
        search(y: y, x: x, direction: 1)
        search(y: y, x: x, direction: 2)
        dfs(array: graph, d: d + 1)
        graph = array
        
        search(y: y, x: x, direction: 2)
        search(y: y, x: x, direction: 0)
        dfs(array: graph, d: d + 1)
        graph = array
    case 4:
        search(y: y, x: x, direction: 0)
        search(y: y, x: x, direction: 1)
        search(y: y, x: x, direction: 2)
        dfs(array: graph, d: d + 1)
        graph = array
        
        
        search(y: y, x: x, direction: 1)
        search(y: y, x: x, direction: 2)
        search(y: y, x: x, direction: 3)
        dfs(array: graph, d: d + 1)
        graph = array
        
        
        search(y: y, x: x, direction: 2)
        search(y: y, x: x, direction: 3)
        search(y: y, x: x, direction: 0)
        dfs(array: graph, d: d + 1)
        graph = array
        
        search(y: y, x: x, direction: 3)
        search(y: y, x: x, direction: 0)
        search(y: y, x: x, direction: 1)
        dfs(array: graph, d: d + 1)
        
        graph = array
    default:
        search(y: y, x: x, direction: 0)
        search(y: y, x: x, direction: 1)
        search(y: y, x: x, direction: 2)
        search(y: y, x: x, direction: 3)
        dfs(array: graph, d: d + 1)
        graph = array
    }
    
    
    
}
dfs(array: graph, d: 0)

print(answer)
