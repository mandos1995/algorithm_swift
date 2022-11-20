while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let w = input[0], h = input[1]
    if w == 0 && h == 0 {
        break
    }
    var graph = [[Int]]()

    for _ in 0..<h {
        graph.append(readLine()!.split(separator: " ").map { Int($0)! })
    }
    var result = 0
    
    func dfs(_ x: Int, _ y: Int) {
        if x <= -1 || x >= h || y <= -1 || y >= w {
            return
        }
        
        if graph[x][y] == 1 {
            graph[x][y] = 0
            
            dfs(x - 1, y - 1)
            dfs(x - 1, y)
            dfs(x - 1, y + 1)
            dfs(x, y - 1)
            dfs(x, y + 1)
            dfs(x + 1, y - 1)
            dfs(x + 1, y)
            dfs(x + 1, y + 1)
        }
    }
    
    for i in 0..<h {
        for j in 0..<w {
            if graph[i][j] == 1 {
                dfs(i, j)
                result += 1
            }
        }
    }
    print(result)
}
