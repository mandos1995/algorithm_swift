struct Stack<T> {
    private var array: [T] = []
    
    var top: T? {
        return array.last
    }
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    mutating func push(_ element: T) {
        array.append(element)
    }
    
    mutating func pop() -> T? {
        return array.popLast()
    }
}

var stack: Stack<Int> = Stack()
stack.push(1)
stack.push(2)
stack.push(3)

print(stack.pop())  // Optional(3)
