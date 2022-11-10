let n = Int(readLine()!)!
var graph: [[Int]] = []
let INF = 1_234_567_890
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

var cache = [[Int]](repeating: [Int](repeating: -1, count: (1 << n)), count: n)

func tsp(now: Int, visited: Int) -> Int {
    if cache[now][visited] != -1 { return cache[now][visited] }
    
    if visited == (1 << n) - 1 {
        return graph[now][0] == 0 ? INF : graph[now][0]
    }

    var answer = INF
    for i in 1..<n {
        if graph[now][i] == 0 || visited & (1 << i) != 0 {
            continue
        }
        answer = min(graph[now][i] + tsp(now: i, visited: visited | (1 << i)), answer)
    }
    
    cache[now][visited] = answer
    
    return answer
}

print(tsp(now: 0, visited: 1))
