import Foundation
var graph: [[Int]] = []
for _ in 0..<9 {
    graph.append(readLine()!.map{ Int(String($0))! })
}

var zeroCoords: [(Int, Int)] = []
for y in 0..<9 {
    for x in 0..<9 {
        if graph[y][x] == 0 {
            zeroCoords.append((y, x))
        }
    }
}

func isVaildRow(y: Int, target: Int) -> Bool {
    for i in 0..<9 {
        if graph[y][i] == target {
            return false
        }
    }
    return true
}

func isVaildColumn(x: Int, target: Int) -> Bool {
    for i in 0..<9 {
        if graph[i][x] == target {
            return false
        }
    }
    return true
}


func isVaildRect(x: Int, y: Int, target: Int) -> Bool {
    let nx = x / 3 * 3
    let ny = y / 3 * 3
    for i in 0..<3 {
        for j in 0..<3 {
            if graph[ny + i][nx + j] == target {
                return false
            }
        }
    }
    return true
}

func dfs(d: Int) {
    if d == zeroCoords.count {
        for y in 0..<9 {
            for x in 0..<9 {
                print(graph[y][x], terminator: "")
            }
            print()
        }
        exit(0)
    }
    
    for target in 1...9 {
        let y = zeroCoords[d].0
        let x = zeroCoords[d].1
        
        if isVaildRow(y: y, target: target) && isVaildColumn(x: x, target: target) && isVaildRect(x: x, y: y, target: target) {
            graph[y][x] = target
            dfs(d: d + 1)
            graph[y][x] = 0
        }
    }
    
}

dfs(d: 0)
