let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]

var indegree = [Int](repeating: 0, count: n + 1)
var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    graph[a].append(b)
    indegree[b] += 1
}

func topologySort() {
    var queue: [Int] = []
    var answer: [Int] = []
    for i in 1...n {
        if indegree[i] == 0 {
            queue.append(i)
        }
    }
    
    var index = 0
    
    while index < queue.count {
        let node = queue[index]
        answer.append(node)
        
        for nextNode in graph[node] {
            indegree[nextNode] -= 1
            
            if indegree[nextNode] == 0 {
                queue.append(nextNode)
            }
        }
        
        index += 1
    }
    
    answer.forEach {
        print($0, terminator: " ")
    }
}

topologySort()
