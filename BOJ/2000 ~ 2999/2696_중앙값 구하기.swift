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
for _ in 0..<Int(readLine()!)! {
    var maxHeap = Heap<Int>(comparer: <)
    var minHeap = Heap<Int>(comparer: >)
    let m = Int(readLine()!)!
    let loofNum = m % 10 == 0 ? m / 10 : m / 10 + 1
    var input: [[Int]] = []
    for _ in 0..<loofNum {
        input.append(readLine()!.split(separator: " ").map { Int($0)! })
    }
    let array = input.flatMap { $0 }
    var median = array[0]
    print((array.count + 1) / 2)
    print(median,terminator: " ")
    
    for i in 1..<array.count {
        if median < array[i] {
            minHeap.insert(array[i])
        } else {
            maxHeap.insert(array[i])
        }
        
        if i % 2 == 0 {
            if maxHeap.nodes.count >= minHeap.nodes.count {
                minHeap.insert(median)
            } else {
                maxHeap.insert(median)
            }
            
            if maxHeap.nodes.count >= minHeap.nodes.count {
                median = maxHeap.delete()!
            } else {
                median = minHeap.delete()!
            }
            if i % 20 == 0 {
                print()
            }
            print(median,terminator: " ")
            
        }
    }
    print()
    
}
