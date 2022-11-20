import Foundation
struct Edge {
    let startNode: Int
    let endNode: Int
    let cost: Double
}

let n = Int(readLine()!)!
var coords: [[Double]] = []

for _ in 0..<n {
    coords.append(readLine()!.split(separator: " ").map { Double($0)! })
}
var edges: [Edge] = []
for i in 0..<n - 1{
    for j in i + 1..<n {
        let cost = sqrt(pow((coords[i][0] - coords[j][0]), 2.0) + pow(coords[i][1] - coords[j][1], 2.0))
        edges.append(Edge(startNode: i + 1, endNode: j + 1, cost: cost))
        edges.append(Edge(startNode: j + 1, endNode: i + 1, cost: cost))
    }
}

edges = edges.sorted { $0.cost < $1.cost }

var parent = [Int](repeating: 0, count: n + 1)

for i in 1...n {
    parent[i] = i
}

func find(x: Int) -> Int {
    if parent[x] == x {
        return x
    }
    parent[x] = find(x: parent[x])
    return parent[x]
}

func union(a: Int, b: Int) {
    let a = find(x: a)
    let b = find(x: b)
    if a > b {
        parent[a] = b
    } else{
        parent[b] = a
    }
}

func isSameParent(a: Int, b: Int) -> Bool {
    let a = find(x: a)
    let b = find(x: b)
    return a == b
}

var answer: Double = 0

for e in edges {
    if isSameParent(a: e.startNode, b: e.endNode) {
        continue
    }
    union(a: e.startNode, b: e.endNode)
    answer += e.cost
}

print(answer)
