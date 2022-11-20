func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0], m = input[1], w = input[2]
    let INF = 1_000_000_000
    var distance = [Int](repeating: INF, count: n + 1)
    var edges: [(Int, Int, Int)] = []
    for _ in 0..<m {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        edges.append((input[0], input[1], input[2]))
        edges.append((input[1], input[0], input[2]))
    }
    for _ in 0..<w {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        edges.append((input[0], input[1], input[2] * -1))
    }
    
    func bf() -> Bool {
        for i in 0..<n {
            for j in 0..<edges.count {
                let currentNode = edges[j].0
                let nextNode = edges[j].1
                let cost = edges[j].2
                
                if distance[nextNode] > distance[currentNode] + cost {
                    distance[nextNode] = distance[currentNode] + cost
                    
                    if i == n - 1 {
                        return true
                    }
                }
            }
        }
        return false
    }
    
    let negativeCycle = bf()
    
    if negativeCycle {
        print("YES")
    } else {
        print("NO")
    }
}
let t = Int(readLine()!)!
for _ in 0..<t {
    solution()
}
