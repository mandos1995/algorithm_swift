struct Queue {
    private var array: [Int] = []
    var index: Int = 0
    
    var size: Int {
        return array.count - index
    }

    mutating func push(_ element: Int) {
        array.append(element)
    }
    
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
(1...n).forEach { queue.push($0) }

while queue.size > 1 {
    print(queue.pop()!, terminator: " ")
    queue.push(queue.pop()!)
}

print(queue.pop()!)
