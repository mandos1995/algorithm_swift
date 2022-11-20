public struct Heap<T> {
    var nodes: [T] = []
    let comparer: (T,T) -> Bool
    var isEmpty: Bool {
        return nodes.isEmpty
    }
    init(comparer: @escaping (T,T) -> Bool) {
        self.comparer = comparer
    }
    func peek() -> T? {
        return nodes.first
    }
    mutating func insert(_ element: T) {
        var index = nodes.count
        nodes.append(element)
        while index > 0, !comparer(nodes[index],nodes[(index-1)/2]) {
            nodes.swapAt(index, (index-1)/2)
            index = (index-1)/2 }
    }
    mutating func delete() -> T? {
        guard !nodes.isEmpty else { return nil }
        if nodes.count == 1 {
            return nodes.removeFirst()
        }
        let result = nodes.first
        nodes.swapAt(0, nodes.count-1)
        _ = nodes.popLast()
        var index = 0
        while index < nodes.count {
            let left = index * 2 + 1
            let right = left + 1
            if right < nodes.count {
                if comparer(nodes[left], nodes[right]), !comparer(nodes[right], nodes[index]) {
                    nodes.swapAt(right, index)
                    index = right
                } else if !comparer(nodes[left], nodes[index]){
                    nodes.swapAt(left, index)
                    index = left
                } else {
                    break
                }
            } else if left < nodes.count {
                if !comparer(nodes[left], nodes[index]) {
                    nodes.swapAt(left, index)
                    index = left
                } else { break }
                
            } else { break }
        }
        return result
    }
}
extension Heap where T: Comparable {
    init() {
        self.init(comparer: >) }
}

struct Data : Comparable{
    static func < (lhs: Data, rhs: Data) -> Bool {
        lhs.cost < rhs.cost
        
    }
    var cost : Int
    var node : Int
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1], x = input[2]
let INF = 1_000_000_000
var distance = [Int](repeating: INF, count: n + 1)
var graph = [[(Int, Int)]](repeating: [(Int, Int)](repeating: (0, 0), count: 0), count: n + 1)
var reversedGraph = [[(Int, Int)]](repeating: [(Int, Int)](repeating: (0, 0), count: 0), count: n + 1)
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1], cost = input[2]
    graph[a].append((b, cost))
    reversedGraph[b].append((a, cost))
}

func dijkstra(start: Int, graph: [[(Int, Int)]]) {
    var pq = Heap<Data>()
    pq.insert(Data(cost: 0, node: start))
    distance[start] = 0
    
    while !pq.isEmpty {
        let current = pq.delete()!
        
        if current.cost > distance[current.node] {
            continue
        }
        
        for nextNode in graph[current.node] {
            let cost = current.cost + nextNode.1
            if cost < distance[nextNode.0] {
                distance[nextNode.0] = cost
                pq.insert(Data(cost: cost, node: nextNode.0))
            }
        }
    }
}
dijkstra(start: x, graph: graph)
let startDistance = distance
distance = [Int](repeating: INF, count: n + 1)
dijkstra(start: x, graph: reversedGraph)
var answer = 0
for i in 1...n {
    let dist = startDistance[i] + distance[i]
    answer = max(dist, answer)
}
print(answer)
