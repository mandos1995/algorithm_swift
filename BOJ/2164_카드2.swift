class Queue<T> {
    var enQueue: [T]
    var deQueue: [T] = []
    
    var count: Int {
        return enQueue.count + deQueue.count
    }
    
    var isEmpty: Bool {
        return enQueue.isEmpty && deQueue.isEmpty
    }
    
    init(_ queue: [T]) {
        self.enQueue = queue
    }
    
    func push(_ element: T) {
        enQueue.append(element)
    }
    
    func pop() -> T {
        if deQueue.isEmpty {
            deQueue = enQueue.reversed()
            enQueue.removeAll()
        }
        return deQueue.popLast()!
    }
    
}

let n = Int(readLine()!)!
var card: [Int] = []
for i in 1...n {
    card.append(i)
}
var queue: Queue = Queue<Int>(card)

while queue.count > 1 {
    _ = queue.pop()
    queue.push(queue.pop())
}
print(queue.pop())
