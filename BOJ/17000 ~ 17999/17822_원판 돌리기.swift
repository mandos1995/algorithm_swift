let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1], t = input[2]
var graph: [[Int]] = [[Int](repeating: 0, count: m)]
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x = input[0], d = input[1], k = input[2] % m
    for n in 1...n {
        if n % x == 0 {
            if d == 0 {
                for _ in 1...k {
                    graph[n].insert(graph[n].removeLast(), at: 0)
                }
            } else {
                for _ in 1...k {
                    graph[n].append(graph[n].removeFirst())
                }
            }
        }
    }
    var newGraph = graph
    var isAdjEqaul = false
    for i in 1...n {
        for j in 0..<m {
            let left = j - 1 == -1 ? m - 1 : j - 1
            let right = j + 1 == m ? 0 : j + 1
            if graph[i][j] == 0 {
                continue
            }
            if graph[i][j] == graph[i][left] {
                newGraph[i][j] = 0
                newGraph[i][left] = 0
                isAdjEqaul = true
            }
            if graph[i][j] == graph[i][right] {
                newGraph[i][j] = 0
                newGraph[i][right] = 0
                isAdjEqaul = true
            }
        }
    }
    for x in 0..<m {
        for j in 1..<n {
            if graph[j][x] == 0 {
                continue
            }
            if graph[j][x] == graph[j - 1][x] {
                newGraph[j][x] = 0
                newGraph[j - 1][x] = 0
                isAdjEqaul = true
            }
            if graph[j][x] == graph[j + 1][x] {
                newGraph[j][x] = 0
                newGraph[j + 1][x] = 0
                isAdjEqaul = true
            }
        }
    }
    
    if !isAdjEqaul {
        let total = newGraph.flatMap { $0 }.reduce(0, +)
        let divideNumber = newGraph.flatMap { $0 }.filter { $0 != 0
        }.count
        let avg = Double(total) / Double(divideNumber)
        for y in 1...n {
            for x in 0..<m {
                if newGraph[y][x] != 0 {
                    if Double(newGraph[y][x]) > avg {
                        newGraph[y][x] -= 1
                    } else if Double(newGraph[y][x]) < avg {
                        newGraph[y][x] += 1
                    }
                }
            }
        }
    }
    
    graph = newGraph
}
print(graph.flatMap { $0 }.reduce(0, +))
