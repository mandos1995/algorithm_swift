struct Queue {
    private var array: [Int] = []
    var index: Int = 0
    
    var size: Int {
        return array.count - index
    }
    
    var isEmpty: Bool {
        return array.count - index <= 0
    }
    
    var elements: [Int] {
        return Array(array[index...])
    }

    mutating func push(_ element: Int) {
        array.append(element)
    }
    
    @discardableResult
    mutating func pop() -> Int? {
        guard index < array.count else {
            return nil
        }
        let document = array[index]
        index += 1
        return document
    }
}

let n = Int(readLine()!)!
var queue = Queue()
while let num = Int(readLine()!), num != -1 {
    if num > 0 && queue.size < n {
        queue.push(num)
        continue
    }
    
    if num == 0 {
        queue.pop()
    }
}

print(queue.elements.isEmpty ? "empty" : queue.elements.map { String($0) }.joined(separator: " "))

