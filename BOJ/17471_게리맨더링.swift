let n = Int(readLine()!)!
let population = readLine()!.split(separator: " ").map { Int($0)! }
var graph: [[Int]] = []
var redIndex: [Int] = []
var blueIndex: [Int] = []
var visited = [Bool](repeating: false, count: n)
var redConnectCount = 0
var blueConnectCount = 0
let INF = 1_000_000_000
var answer = INF
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").dropFirst().map { Int($0)! - 1 })
}

// 1. 빨강, 파랑 선거구로 모든 경우의 수로 나누기
func selectColors(x: Int) {
    if x == n {
        if !(redIndex.isEmpty || blueIndex.isEmpty) {
            redColorDfs(start: redIndex[0])
            visited = [Bool](repeating: false, count: n)
            blueColorDfs(start: blueIndex[0])
            visited = [Bool](repeating: false, count: n)
            if redConnectCount + blueConnectCount == n {
                var redPopulation = 0
                var bluePopulation = 0
                for redIdx in redIndex {
                    redPopulation += population[redIdx]
                }
                
                for blueIdx in blueIndex {
                    bluePopulation += population[blueIdx]
                }
                answer = min(abs(redPopulation - bluePopulation), answer)
            }
            redConnectCount = 0
            blueConnectCount = 0
        }
        return
    }
    redIndex.append(x)
    selectColors(x: x + 1)
    redIndex.removeLast()
    
    blueIndex.append(x)
    selectColors(x: x + 1)
    blueIndex.removeLast()
}

// 2. 선거구가 제대로 나뉘어졌는지 확인
func redColorDfs(start: Int) {
    visited[start] = true
    redConnectCount += 1
    for node in graph[start] {
        if !visited[node] && redIndex.contains(node) {
            visited[node] = true
            redColorDfs(start: node)
        }
    }
}

func blueColorDfs(start: Int) {
    visited[start] = true
    blueConnectCount += 1
    for node in graph[start] {
        if !visited[node] && blueIndex.contains(node) {
            visited[node] = true
            blueColorDfs(start: node)
        }
    }
}

selectColors(x: 0)
answer == INF ? print(-1) : print(answer)
