import Foundation

struct Edge {
    let start: Int
    let end: Int
    let cost: Double
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var coords: [(Double, Double)] = []
var edges: [Edge] = []
var parent = [Int](0...n)

func getDistance(_ x1: Double, _ y1: Double, _ x2: Double, _ y2: Double) -> Double {
    return sqrt(pow(abs(y1 - y2), 2) + pow(abs(x1 - x2), 2))
}

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    let x = input[0], y = input[1]
    coords.append((x, y))
}

for i in 0..<n - 1 {
    for j in i + 1..<n {
        let cost = getDistance(coords[i].0, coords[i].1, coords[j].0, coords[j].1)
        edges.append(Edge(start: i + 1, end: j + 1, cost: cost))
    }
}

func find(_ x: Int) -> Int {
    if parent[x] == x {
        return x
    }
    parent[x] = find(parent[x])
    return parent[x]
}

func union(_ a: Int, _ b: Int) {
    let a = find(a)
    let b = find(b)
    
    if a == b {
        return
    }
    if a > b {
        parent[a] = b
    } else {
        parent[b] = a
    }
}

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    union(a, b)
}

edges.sort { $0.cost < $1.cost }

var answer: Double = 0

for edge in edges {
    let start = edge.start
    let end = edge.end
    if find(start) == find(end) {
        continue
    }
    union(start, end)
    answer += edge.cost
}

print(String(format: "%.2f", answer))
