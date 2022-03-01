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
struct Data : Comparable{
    static func < (lhs: Data, rhs: Data) -> Bool {
        lhs.cost < rhs.cost
        
    }
    var cost : Int
    var index : Int
}

for _ in 0..<Int(readLine()!)! {
    func syncMaxHeap() {
        while !maxHeap.isEmpty && !vaild[maxHeap.peek()!.index] {
            _ = maxHeap.delete()!
        }
    }
    func syncMinHeap() {
        while !minHeap.isEmpty && !vaild[minHeap.peek()!.index] {
            _ = minHeap.delete()!
        }
    }
    var maxHeap = Heap<Data>(comparer: <)
    var minHeap = Heap<Data>(comparer: >)
    var vaild: [Bool] = [Bool](repeating: false, count: 1000001)
    for i in 0..<Int(readLine()!)! {
        let input = readLine()!.split(separator: " ").map { String($0) }
        let command = input[0], num = Int(input[1])!
        if command == "I" {
            maxHeap.insert(Data(cost: num, index: i))
            minHeap.insert(Data(cost: num, index: i))
            vaild[i] = true
        } else {
            if num > 0 {
                syncMaxHeap()
                if !maxHeap.isEmpty {
                    vaild[maxHeap.delete()!.index] = false
                }
            } else {
                syncMinHeap()
                if !minHeap.isEmpty {
                    vaild[minHeap.delete()!.index] = false
                }
            }
        }
    }
    syncMinHeap()
    syncMaxHeap()
    
    if maxHeap.isEmpty {
        print("EMPTY")
    } else {
        print(maxHeap.delete()!.cost, minHeap.delete()!.cost)
    }
}
