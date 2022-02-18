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

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
let cards = readLine()!.split(separator: " ").map { Int($0)! }
var heap = Heap<Int>()
for card in cards {
    heap.insert(card)
}
for _ in 0..<m {
    let a = heap.delete()!
    let b = heap.delete()!
    heap.insert(a + b)
    heap.insert(a + b)
}
print(heap.nodes.reduce(0, +))
