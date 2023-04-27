struct Heap<T: Comparable> {
    private var elements: [T] = []
    private let comparer: (T, T) -> Bool
    
    var isEmpty: Bool {
        return elements.count <= 1
    }
    
    var top: T? {
        return isEmpty ? nil : elements[1]
    }
    
    init(comparer: @escaping (T,T) -> Bool) {
        self.comparer = comparer
    }
    
    mutating func insert(element: T) {
        if elements.isEmpty {
            elements.append(element)
            elements.append(element)
            return
        }
        elements.append(element)
        swimUp(index: elements.count - 1)
    }
    
    mutating private func swimUp(index: Int) {
        var index = index
        while index > 1 && comparer(elements[index], elements[index / 2]) {
            elements.swapAt(index, index / 2)
            index /= 2
        }
    }
    
    mutating func pop() -> T? {
        if elements.count < 2 { return nil }
        elements.swapAt(1, elements.count - 1)
        let deletedElement = elements.removeLast()
        diveDown(index: 1)
        return deletedElement
    }
    
    mutating private func diveDown(index: Int) {
        var swapIndex = index
        var isSwap = false
        let leftIndex = index * 2
        let rightIndex = index * 2 + 1

        if leftIndex < elements.endIndex && comparer(elements[leftIndex], elements[swapIndex]) {
            swapIndex = leftIndex
            isSwap = true
        }
        
        if rightIndex < elements.endIndex && comparer(elements[rightIndex], elements[swapIndex]) {
            swapIndex = rightIndex
            isSwap = true
        }

        if isSwap {
            elements.swapAt(swapIndex, index)
            diveDown(index: swapIndex)
        }
    }
}

struct Data: Comparable {
    static func < (lhs: Data, rhs: Data) -> Bool {
        return lhs.cost < rhs.cost
    }
    
    let node: Int
    let cost: Int
}

func solution() {
    let nmt = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nmt[0], m = nmt[1], t = nmt[2]
    let sgh = readLine()!.split(separator: " ").map { Int($0)! }
    let s = sgh[0], g = sgh[1], h = sgh[2]
    let INF = 1_234_567_890
    var graph = [[Data]](repeating: [], count: n + 1)
    var distance = [Int](repeating: INF, count: n + 1)
    
    for _ in 0..<m {
        let abd = readLine()!.split(separator: " ").map { Int($0)! }
        let a = abd[0], b = abd[1], d = abd[2]
        graph[a].append(Data(node: b, cost: d))
        graph[b].append(Data(node: a, cost: d))
    }
    
    var destinations: [Int] = []
    
    for _ in 0..<t {
        destinations.append(Int(readLine()!)!)
    }
    
    func dijkstra(start: Int) {
        distance = [Int](repeating: INF, count: n + 1)
        var heap = Heap<Data>(comparer: <)
        heap.insert(element: Data(node: start, cost: 0))
        distance[start] = 0
        
        while !heap.isEmpty {
            let now = heap.pop()!
            
            if distance[now.node] < now.cost {
                continue
            }
            
            for next in graph[now.node] {
                let cost = now.cost + next.cost
                if distance[next.node] > cost {
                    distance[next.node] = cost
                    heap.insert(element: Data(node: next.node, cost: cost))
                }
            }
        }
    }
    
    dijkstra(start: s)
    var minCosts: [Int: Int] = [:]
    var waypoints = [0, 0]
    var answer: [Int] = []
    
    for destination in destinations {
        minCosts[destination] = distance[destination]
    }
    
    // s -> g
    waypoints[0] += distance[g]
    
    // s -> h
    waypoints[1] += distance[h]
    
    dijkstra(start: g)
    
    // s -> g -> h
    waypoints[0] += distance[h]
    
    dijkstra(start: h)
    
    // s -> h -> g
    waypoints[1] += distance[g]
    
    dijkstra(start: g)
    for destination in destinations {
        if waypoints[1] + distance[destination] == minCosts[destination] {
            answer.append(destination)
        }
    }
    
    dijkstra(start: h)
    for destination in destinations {
        if waypoints[0] + distance[destination] == minCosts[destination] {
            answer.append(destination)
        }
    }
    
    print(answer.sorted(by: <).map { String($0) }.joined(separator: " "))
    
}

let t = Int(readLine()!)!
for _ in 0..<t {
    solution()
}
