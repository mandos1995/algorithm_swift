let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}
var chicken: [(Int, Int)] = []
var house: [(Int, Int)] = []
for y in 0..<n {
    for x in 0..<n {
        if graph[y][x] == 1 {
            house.append((y, x))
        }
        if graph[y][x] == 2 {
            chicken.append((y, x))
        }
    }
}

var visited = [Bool](repeating: false, count: chicken.count)
var answer = Int.max
var selectedChicken: [(Int, Int)] = []
func chickenSelecte(index: Int, d: Int) {
    if d == m {
        var chickenDistance = Int.max
        var cityChickenDistance = 0
        for h in house {
            for c in selectedChicken {
                let distance = abs(h.0 - c.0) + abs(h.1 - c.1)
                if chickenDistance > distance {
                    chickenDistance = distance
                }
            }
            cityChickenDistance += chickenDistance
            chickenDistance = Int.max
        }
        answer = min(answer,cityChickenDistance)
        return
        
    } else {
        for index in index..<chicken.count{
            if visited[index] {
                continue
            }
            visited[index] = true
            selectedChicken.append(chicken[index])
            chickenSelecte(index: index + 1, d: d + 1)
            selectedChicken.removeLast()
            visited[index] = false
        }
    }
}

chickenSelecte(index: 0, d: 0)

print(answer)
