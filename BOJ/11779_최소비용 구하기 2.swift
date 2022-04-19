import Foundation

// 라이노님의 FileIO
final class FileIO {
    private var buffer:[UInt8]
    private var index: Int
    
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
        index = 0
    }
    
    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }
        
        return buffer.withUnsafeBufferPointer { $0[index] }
    }
    
    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45{ isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }
        
        return sum * (isPositive ? 1:-1)
    }
    
    @inline(__always) func readString() -> String {
        var str = ""
        var now = read()
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        
        while now != 10
                && now != 32 && now != 0 {
            str += String(bytes: [now], encoding: .ascii)!
            now = read()
        }
        
        return str
    }
}

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
let file = FileIO()
let n = file.readInt()
let m = file.readInt()
let INF = 1_000_000_000
var distance = [Int](repeating: INF, count: n + 1)
var graph = [[(Int, Int)]](repeating: [(Int, Int)](repeating: (0, 0), count: 0), count: n + 1)
for _ in 0..<m {
    let a = file.readInt()
    let b = file.readInt()
    let cost = file.readInt()
    graph[a].append((b, cost))
}
let start = file.readInt()
let end = file.readInt()
var route = [Int](repeating: 0, count: n + 1)
func dijkstra(start: Int) {
    var pq = Heap<Data>()
    pq.insert(Data(cost: 0, node: start))
    route[start] = start
    while !pq.isEmpty {
        let now = pq.delete()!
        
        if now.cost > distance[now.node] {
            continue
        }
        
        for nextNode in graph[now.node] {
            let cost = nextNode.1 + now.cost
            if cost < distance[nextNode.0] {
                distance[nextNode.0] = cost
                route[nextNode.0] = now.node
                pq.insert(Data(cost: cost, node: nextNode.0))
            }
        }
    }
}

var temp = end
var answer: [Int] = [end]

dijkstra(start: start)

while true {
    if temp == start {
        break
    }
    temp = route[temp]
    answer.append(temp)
}

print(distance[end])
print(answer.count)
answer.reversed().forEach {
    print($0, terminator: " ")
}
