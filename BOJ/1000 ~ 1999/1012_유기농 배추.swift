let t = Int(readLine()!)!
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let m = input[0]
    let n = input[1]
    let k = input[2]
    
    var map = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)
    for _ in 0..<k {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        map[input[1]][input[0]] = 1
    }
    func dfs(_ x: Int, _ y: Int) -> Bool {
        if x <= -1 || x >= n || y <= -1 || y >= m {
            return false
        }
        
        if map[x][y] == 1 {
            map[x][y] = 0
            // 상하좌우 위치 모두 재귀적으로 호출
            dfs(x - 1, y)
            dfs(x, y - 1)
            dfs(x + 1, y)
            dfs(x, y + 1)
            return true
        }
        return false
    }
    
    var result = 0
    for i in 0..<n {
        for j in 0..<m {
            if dfs(i, j) == true {
                result += 1
            }
        }
    }
    print(result)
}
