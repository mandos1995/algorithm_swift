let n = Int(readLine()!)!
var graph: [[Character]] = []

for _ in 0..<n {
    graph.append(readLine()!.map { $0 })
}

var answer = [0, 0]

for y in 0..<n {
    var isSuccess = false
    for x in 0..<n - 1 {
        if graph[y][x] == "." && graph[y][x + 1] == "." {
            isSuccess = true
            continue
        }
        if graph[y][x] == "X" && isSuccess {
            answer[0] += 1
            isSuccess = false
        }
    }
    if isSuccess {
        answer[0] += 1
    }
}

for x in 0..<n {
    var isSuccess = false
    for y in 0..<n - 1 {
        if graph[y][x] == "." && graph[y + 1][x] == "." {
            isSuccess = true
            continue
        }
        if graph[y][x] == "X" && isSuccess {
            answer[1] += 1
            isSuccess = false
        }
    }
    if isSuccess {
        answer[1] += 1
    }
}

print(answer[0], answer[1])
