var graph: [[Int]] = []
for _ in 0..<5 {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}
let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]
func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<5 ~= y && 0..<5 ~= x
}
var numberSet = Set<Int>()
func dfs(y: Int, x: Int, d: Int, num: String) {
    if d == 5 {
        numberSet.insert(Int(num)!)
        return
    }
    
    for i in 0..<4 {
        let nx = dx[i] + x
        let ny = dy[i] + y
        
        if isVaildCoord(y: ny, x: nx) {
            dfs(y: ny, x: nx, d: d + 1, num: num + "\(graph[ny][nx])")
        }
    }
}
for y in 0..<5 {
    for x in 0..<5 {
        dfs(y: y, x: x, d: 0, num: "\(graph[y][x])")
    }
}
print(numberSet.count)
