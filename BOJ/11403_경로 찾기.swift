class Queue<T> {
    var enqueue: [T]
    var dequeue: [T] = []
    var isEmpty: Bool {
        return enqueue.isEmpty && dequeue.isEmpty
    }

    init(_ queue: [T]) {
        enqueue = queue
    }

    func append(_ n: T) {
        enqueue.append(n)
    }
    
    func pop() -> T? {
        if dequeue.isEmpty {
            dequeue = enqueue.reversed()
            enqueue.removeAll()
        }
        return dequeue.popLast()
    }

    func removeAll() {
        enqueue.removeAll()
        dequeue.removeAll()
    }
}

let n = Int(readLine()!)!
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)!} )
}
var visited = [Bool](repeating: false, count: n)
var isConnect: [Int] = []

func bfs(start: Int) {
    let queue = Queue<Int>([start])
    while !queue.isEmpty {
        let v = queue.pop()!
        for i in 0..<n {
            if graph[v][i] == 1 && !visited[i] {
                visited[i] = true
                isConnect.append(i)
                queue.append(i)
            }
        }
    }
}
for i in 0..<n {
    bfs(start: i)
    for j in 0..<n {
        if isConnect.contains(j) {
            print(1, terminator: " ")
        } else {
            print(0, terminator: " ")
        }
    }
    print()
    isConnect.removeAll()
    visited = [Bool](repeating: false, count: n)
}
