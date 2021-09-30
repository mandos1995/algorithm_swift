let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]    // 세로길이
let m = input[1]    // 가로길이

var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n)

for i in 0..<n {
    let ices = readLine()!
    for ice in ices {
        graph[i].append(Int(String(ice))!)
    }
}
print(graph)

// DFS로 특정한 노드를 방문한 뒤에 연결된 모든 노드들도 방문
func dfs(_ x: Int, _ y: Int) -> Bool {
    // 주어진 범위를 벗어나는 경우에는 즉시 종료
    if x <= -1 || x >= n || y <= -1 || y >= m {
        return false
    }
    
    // 현재 노드를 아직 방문하지 않았다면
    if graph[x][y] == 0 {
        // 해당 노드 방문 처리
        graph[x][y] = 1
        // 상, 하, 좌, 우의 위치도 모두 재귀적으로 호출
        dfs(x - 1, y) // 상
        dfs(x + 1, y) // 하
        dfs(x, y - 1) // 좌
        dfs(x, y + 1) // 우
        return true
    }
    return false
}

// 모든 노드(위치)에 대하여 음료수 채우기
var result = 0
for i in 0..<n {
    for j in 0..<m {
        print(i,j, dfs(i, j))
        if dfs(i, j) == true {
            result += 1
        }
    }
}
print(result)
