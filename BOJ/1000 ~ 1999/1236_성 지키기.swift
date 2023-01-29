let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph: [[Character]] = []
for _ in 0..<n {
    graph.append(readLine()!.map { $0 })
}

let emptyRow = String(repeating: ".", count: m)
let emptyColumn = String(repeating: ".", count: n)

var emptyRowCount = 0
var emptyColumnCount = 0

for i in 0..<n {
    emptyRowCount += String(graph[i]) == emptyRow ? 1 : 0
}

for x in 0..<m {
    var temp = ""
    for y in 0..<n {
        temp += String(graph[y][x])
    }
    emptyColumnCount += temp == emptyColumn ? 1 : 0
}

print(max(emptyRowCount, emptyColumnCount))
