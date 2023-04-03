struct Queue<T> {
    private var array: [T] = []
    private var index: Int = 0
    
    var top: T? {
        return self.isEmpty ? nil : array[index]
    }
    
    var isEmpty: Bool {
        return array.count - index <= 0
    }
    
    var count: Int {
        return array.count - index
    }
    
    mutating func push(_ element: T) {
        array.append(element)
    }
    
    mutating func pop() -> T? {
        guard !self.isEmpty else {
            return nil
        }
        let element = array[index]
        index += 1
        return element
    }
}
