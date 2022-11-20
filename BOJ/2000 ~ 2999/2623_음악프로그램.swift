let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var indegree = [Int](repeating: 0, count: n + 1)
var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let count = input[0]
    for i in 1..<count {
        graph[input[i + 1]].append(input[i])
        graph[input[i]].append(input[i + 1])
        indegree[input[i + 1]] += 1
    }
}

var queue: [Int] = []

for i in 1...n {
    if indegree[i] == 0 {
        queue.append(i)
    }
}
var answer: [Int] = []
var index = 0
while index < queue.count {
    let now = queue[index]
    answer.append(now)
    for nextNode in graph[now] {
        indegree[nextNode] -= 1
        if indegree[nextNode] == 0 {
            queue.append(nextNode)
        }
    }
    index += 1
}

if answer.count != n {
    print(0)
} else {
    answer.forEach {
        print($0)
    }
}
