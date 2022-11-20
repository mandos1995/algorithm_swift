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
let n = input[0], m = input[1], r = input[2]
var items = readLine()!.split(separator: " ").map { Int($0)! }
items.insert(0, at: 0)
var graph = [[(Int, Int)]](repeating: [(Int, Int)](repeating: (0, 0), count: 0), count: n + 1)
for _ in 0..<r {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1], cost = input[2]
    graph[a].append((b, cost))
    graph[b].append((a, cost))
}
let INF = 1_000_000_000
var distance = [Int](repeating: INF, count: n + 1)
func dijkstra(start: Int) {
    distance[start] = 0
    var pq = Heap<Data>()
    pq.insert(Data(cost: 0, node: start))
    
    while !pq.isEmpty {
        let now = pq.delete()!
        
        if now.cost > distance[now.node] {
            continue
        }
        
        for nextNode in graph[now.node] {
            let cost = nextNode.1 + now.cost
            
            if cost < distance[nextNode.0] {
                distance[nextNode.0] = cost
                pq.insert(Data(cost: cost, node: nextNode.0))
            }
        }
    }
}
var answer = 0
for i in 1...n {
    var count = 0
    distance = [Int](repeating: INF, count: n + 1)
    dijkstra(start: i)
    for j in 1...n {
        if distance[j] > m {
            continue
        }
        count += items[j]
    }
    answer = max(answer, count)
}

print(answer)
