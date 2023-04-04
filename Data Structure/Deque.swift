struct Deque<T> {
    private var leftArray: [T] = []
    private var rightArray: [T] = []
    private var leftIndex: Int = 0
    private var rightIndex: Int = 0
    
    var isEmpty: Bool {
        return leftIndex + rightIndex >= leftArray.count + rightArray.count
    }
    
    var size: Int {
        return (leftArray.count + rightArray.count) - (leftIndex + rightIndex)
    }
    
    var front: T? {
        if isEmpty {
            return nil
        }
        
        if leftIndex >= leftArray.count {
            return rightArray[rightIndex]
        }
        
        return leftArray.last
    }
    
    var back: T? {
        if isEmpty {
            return nil
        }
        
        if rightIndex >= rightArray.count {
            return leftArray[leftIndex]
        }
        
        return rightArray.last
    }
    
    mutating func pushLeft(_ element: T) {
        leftArray.append(element)
    }
    
    mutating func popLeft() -> T? {
        if isEmpty {
            return nil
        }
        
        if leftIndex >= leftArray.count {
            let element = rightArray[rightIndex]
            rightIndex += 1
            return element
        }
        
        return leftArray.popLast()
    }
    
    mutating func pushRight(_ element: T) {
        rightArray.append(element)
    }
    
    mutating func popRight() -> T? {
        if isEmpty {
            return nil
        }
        
        if rightIndex >= rightArray.count {
            let element = leftArray[leftIndex]
            leftIndex += 1
            return element
        }
        
        return rightArray.popLast()
    }
}
