let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var edges: [(Int, Int, Int)] = []
let INF = 1_000_000_000
var distance = [Int](repeating: INF, count: n + 1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    edges.append((input[0], input[1], input[2]))
}

func bf(start: Int) -> Bool {
    distance[start] = 0
    for i in 0..<n {
        for j in 0..<m {
            let currentNode = edges[j].0
            let nextNode = edges[j].1
            let cost = edges[j].2
            
            if distance[currentNode] != INF && distance[nextNode] > distance[currentNode] + cost {
                distance[nextNode] = distance[currentNode] + cost
                
                if i == n - 1 {
                    return true
                }
            }
        }
    }
    
    return false
}
let negativCycle = bf(start: 1)

if negativCycle {
    print(-1)
} else {
    for i in 2...n {
        distance[i] == INF ? print(-1) : print(distance[i])
    }
}
