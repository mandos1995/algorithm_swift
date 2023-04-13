struct Heap {
    var array: [Int] = []
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    mutating func insert(_ element: Int) {
        var start = 0
        var end = array.count - 1
        
        if array.isEmpty {
            array.append(element)
            return
        }
        
        while start <= end {
            let mid = (start + end) / 2
            
            if element > array[mid] {
                end = mid - 1
            } else {
                start = mid + 1
            }
        }
        array.insert(element, at: start)
    }
    
    mutating func pop() -> Int? {
        return array.popLast()
    }
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]

var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)
var indegree = [Int](repeating: 0, count: n + 1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    graph[a].append(b)
    indegree[b] += 1
}

var heap = Heap()

for i in 1...n {
    if indegree[i] == 0 {
        heap.insert(i)
    }
}

while !heap.isEmpty {
    let currentNode = heap.pop()!
    print(currentNode, terminator: " ")
    for nextNode in graph[currentNode] {
        indegree[nextNode] -= 1
        if indegree[nextNode] == 0 {
            heap.insert(nextNode)
        }
    }
}
