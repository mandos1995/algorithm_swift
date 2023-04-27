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


let input = readLine()!.split(separator: " ").map { Int($0)! }
let m = input[0], n = input[1]
var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)
var graph: [[Character]] = []

for _ in 0..<n {
    graph.append(readLine()!.map { $0 })
}

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]


func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<m ~= x
}

func bfs(y: Int, x: Int) {
    var deque = Deque<(Int, Int, Int)>()
    deque.pushRight((y, x, 0))
    
    while !deque.isEmpty {
        let now = deque.popLeft()!
        let y = now.0
        let x = now.1
        let breakCount = now.2
        if y == n - 1 && x == m - 1 {
            print(breakCount)
            break
        }
        
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if !isVaildCoord(y: ny, x: nx) || visited[ny][nx] {
                continue
            }
            
            visited[ny][nx] = true
            
            if graph[ny][nx] == "0" {
                deque.pushLeft((ny, nx, breakCount))
            } else {
                deque.pushRight((ny, nx, breakCount + 1))
            }
        }
        
    }
}

bfs(y: 0, x: 0)
