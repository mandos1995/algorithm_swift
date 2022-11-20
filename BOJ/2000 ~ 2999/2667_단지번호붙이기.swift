let n = Int(readLine()!)!
var map = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n)

for i in 0..<n {
    let str = readLine()!
    for j in str {
        map[i].append(Int(String(j))!)
    }
}
var count = 0
func dfs(_ x: Int, _ y: Int) {
    if x <= -1 || x >= n || y <= -1 || y >= n {
        return
    }
    
    if map[x][y] == 1 {
        map[x][y] = 0
        dfs(x - 1, y)
        dfs(x, y - 1)
        dfs(x + 1, y)
        dfs(x, y + 1)
        count += 1
    }

}

var result = 0
var levels = [Int]()
for i in 0..<n {
    for j in 0..<n {
        if map[i][j] == 1 {
            dfs(i, j)
            result += 1
            levels.append(count)
            count = 0
        }
    }
}
levels.sort(by: <)
print(result)
for i in 0..<levels.count {
    print(levels[i])
}
