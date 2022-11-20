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

struct Data : Comparable {
    static func < (lhs: Data, rhs: Data) -> Bool {
        lhs.cost < rhs.cost
        
    }
    var cost : Int
    var node : Int
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let v = input[0], e = input[1]
let start = Int(readLine()!)!
let INF = Int(1e9)
var distance = [Int](repeating: INF, count: v + 1)
var graph = [[(Int, Int)]](repeating: [(Int, Int)](repeating: (0, 0), count: 0), count: v + 1)

for _ in 0..<e {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let u = input[0], v = input[1], w = input[2]
    graph[u].append((v, w))
}

func dijkstra(start: Int) {
    distance[start] = 0
    var pq = Heap<Data>()
    pq.insert(Data(cost: 0, node: start))
    
    while !pq.isEmpty {
        let now = pq.delete()!
        
        if distance[now.node] < now.cost {
            continue
        }
        
        for next in graph[now.node] {
            if now.cost + next.1 < distance[next.0] {
                distance[next.0] = now.cost + next.1
                pq.insert(Data(cost: now.cost + next.1, node: next.0))
            }
        }
    }
    
}

dijkstra(start: start)

for i in 1...v {
    if distance[i] == INF {
        print("INF")
    } else {
        print(distance[i])
    }
}
