let n = Int(readLine()!)!
let twoPeople = readLine()!.split(separator: " ").map { Int($0)! }
let m = Int(readLine()!)!

var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    graph[input[0]].append(input[1])
    graph[input[1]].append(input[0])
}

var visited = [Bool](repeating: false, count: n + 1)
var count = 0

var num = 0
func bfs(_ graph: [[Int]], _ start: Int, _ end: Int) {
    var queue = [start]
    visited[start] = true
    var result = [Int]()
    while !queue.isEmpty {
        for _ in 0..<queue.count {
            let v = queue.removeFirst()
            // print(v, terminator: " ")
            if v == end {
                num = count
            }
            result.append(v)
        }
        for i in result {
            for j in graph[i] {
                if !visited[j] {
                    queue.append(j)
                    visited[j] = true
                }
            }
        }
        count += 1
    }
}
bfs(graph, twoPeople[0], twoPeople[1])

if twoPeople[0] == twoPeople[1] {
    print(0)
} else if num == 0 {
    print(-1)
} else {
    print(num)
}
