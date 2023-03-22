struct Deque<T> {
    var leftStack: [T] = []
    var rightStack: [T] = []
    
    var isEmpty: Bool {
        return leftStack.isEmpty && rightStack.isEmpty
    }
    
    var size: Int {
        return leftStack.count + rightStack.count
    }
    
    var front: Int {
        if isEmpty {
            return -1
        }
        if leftStack.isEmpty {
            return rightStack.first! as! Int
        }
        return leftStack.last! as! Int
    }
    
    var back: Int {
        if isEmpty {
            return -1
        }
        
        if rightStack.isEmpty {
            return leftStack.first! as! Int
        }
        return rightStack.last! as! Int
    }
    
    mutating func appendLeft(_ element: T) {
        leftStack.append(element)
    }
    
    mutating func appendRight(_ element: T) {
        rightStack.append(element)
    }
    
    mutating func removeLeft() -> T? {
        if isEmpty {
            return nil
        }
        
        if leftStack.isEmpty {
            leftStack.append(rightStack.removeFirst())
        }
        return leftStack.removeLast()
    }
    
    mutating func removeRight() -> T? {
        if isEmpty {
            return nil
        }
        
        if rightStack.isEmpty {
            rightStack.append(leftStack.removeFirst())
        }
        return rightStack.removeLast()
    }
}

enum Command: String {
    case pushFront = "push_front"
    case pushBack = "push_back"
    case popFront = "pop_front"
    case popBack = "pop_back"
    case size, empty, front, back
}

let n = Int(readLine()!)!
var deque = Deque<Int>()
for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let command = Command(rawValue: String(input[0]))!

    switch command {
    case .pushFront:
        let element = Int(input[1])!
        deque.appendLeft(element)
    case .pushBack:
        let element = Int(input[1])!
        deque.appendRight(element)
    case .popFront:
        if let removed = deque.removeLeft() {
            print(removed)
        } else {
            print(-1)
        }
    case .popBack:
        if let removed = deque.removeRight() {
            print(removed)
        } else {
            print(-1)
        }
    case .size:
        print(deque.size)
    case .empty:
        print(deque.isEmpty ? 1 : 0)
    case .front:
        print(deque.front)
    case .back:
        print(deque.back)
    }
}
