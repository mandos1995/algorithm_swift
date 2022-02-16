struct Stack<T> {
    private var stack: [T] = []
    
    public var count: Int {
        return stack.count
    }
    
    public var isEmpty: Bool {
        return stack.isEmpty
    }
    
    public mutating func push(_ element: T) {
        stack.append(element)
    }
    
    public mutating func pop() -> T? {
        return stack.isEmpty ? nil : stack.popLast()
    }
    
    public func top() -> T? {
        return stack.isEmpty ? nil : stack[stack.count - 1]
    }
}

let n = Int(readLine()!)!
for _ in 0..<n {
    var stack = Stack<String>()
    let input = readLine()!
    var answer = "YES"
    for i in input {
        if i == "(" {
            stack.push(String(i))
        } else {
            if !stack.isEmpty {
                _ = stack.pop()!
            } else {
                answer = "NO"
            }
        }
    }
    if !stack.isEmpty {
        answer = "NO"
    }
    print(answer)
}
