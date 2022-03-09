var graph: [[Int]] = []
for _ in 0..<10 {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

var paperCounts = [0, 5, 5, 5, 5, 5]

func isVaildAttach(y: Int, x: Int, size: Int) -> Bool {
    var isVaild = true
    for y in y...y + size - 1{
        for x in x...x + size - 1 {
            if graph[y][x] == 0 {
                isVaild = false
            }
        }
    }
    return isVaild
}

var answer = 26
func dfs(y: Int, x: Int, count: Int) {
    if y > 9 {
        answer = min(answer, count)
        return
    }
    
    if x > 9 {
        dfs(y: y + 1, x: 0, count: count)
        return
    }
    
    if graph[y][x] == 1 {
        for i in (1...5).reversed(){
            if paperCounts[i] == 0 {
                continue
            }
            if y + i > 10 || x + i > 10 {
                continue
            }
            
            if !isVaildAttach(y: y, x: x, size: i) {
                continue
            }
            
            for y in y..<y + i {
                for x in x..<x + i {
                    graph[y][x] = 0
                }
            }
            paperCounts[i] -= 1
            dfs(y: y, x: x + i, count: count + 1)
            
            paperCounts[i] += 1
            
            for y in y..<y + i {
                for x in x..<x + i {
                    graph[y][x] = 1
                }
            }
        }
    } else {
        dfs(y: y, x: x + 1, count: count)
    }
}

dfs(y: 0, x: 0, count: 0)
answer == 26 ? print(-1) : print(answer)
