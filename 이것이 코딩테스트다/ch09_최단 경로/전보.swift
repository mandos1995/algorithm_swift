// 우선순위 큐 구현
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

let INF = 1_000_000_000 // 무한을 의미하는 값으로 10억을 설정

// 노드의 개수, 간선의 개수, 시작 노드를 입력받기
let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1], start = input[2]
// 각 노드에 연결되어 있는 노드에 대한 정보를 담는 리스트를 만들기
var graph = [[(Int, Int)]](repeating: [(Int, Int)](repeating: (0, 0), count: 0), count: n + 1)
// 최단 거리 테이블을 모두 무한으로 초기화
var distance = [Int](repeating: INF, count: n + 1)

// 모든 간선 정보를 입력받기
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x = input[0], y = input[1], z = input[2]
    // x번 노드에서 y번 노드로 가는 비용이 z라는 의미
    graph[x].append((y, z))
}

func dijkstra(start: Int) {
    var pq = Heap<Data>()
    pq.insert(Data(cost: 0, node: start))
    distance[start] = 0
    
    while !pq.isEmpty { // 큐가 비어잇지 않다면
        // 가장 최단 거리가 짧은 노드에 대한 정보를 꺼내기
        let now = pq.delete()!
        if distance[now.node] < now.cost {
            continue
        }
        // 현재 노드와 연결된 다른 인접한 노드들을 확인
        for next in graph[now.node] {
            // 현재 노드를 거쳐서, 다른 노드로 이동하는 거리가 더 짧은 경우
            if next.1 + now.cost < distance[next.0] {
                distance[next.0] = next.1 + now.cost
                pq.insert(Data(cost: next.1 + now.cost, node: next.0))
            }
        }
    }
}

// 다익스트라 알고리즘 수행
dijkstra(start: start)

// 도달할 수 있는 노드의 개수
var count = 0
// 도달할 수 있는 노드 중에서, 가장 멀리 있는 노드와의 최단 거리
var maxDistance = 0

for d in distance {
    // 도달할 수 있는 노드인 경우
    if d != INF {
        count += 1
        maxDistance = max(maxDistance, d)
    }
}

// 시작 노드는 제외해야 하므로 count - 1을 출력
print(count - 1, maxDistance)
