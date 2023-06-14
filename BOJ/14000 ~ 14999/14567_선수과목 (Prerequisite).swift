let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var indegree = [Int](repeating: 0, count: n + 1)
var graph = [[Int]](repeating: [], count: n + 1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    graph[a].append(b)
    indegree[b] += 1
}

var queue = indegree.enumerated().filter { $0.element == 0 }.map { ($0.offset, 1) }
var index = 0
var answer = [Int](repeating: 0, count: n + 1)


while queue.count > index {
    let current = queue[index].0
    let depth = queue[index].1
    answer[current] = depth
    
    for nextNode in graph[current] {
        indegree[nextNode] -= 1
        if indegree[nextNode] == 0 {
            queue.append((nextNode, depth + 1))
        }
    }
    index += 1
}

print(answer[1...].map { String($0) }.joined(separator: " "))
