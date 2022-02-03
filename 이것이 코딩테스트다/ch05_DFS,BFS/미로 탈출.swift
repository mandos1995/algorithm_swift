// n, m을 공백으로 구분하여 입력받기
let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]

// 2차원 리스트의 맵 정보 입력받기
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.map { Int(String($0))! })
}

// 이동할 네 방향 정의 (상, 하, 좌, 우)
let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

// BFS 소스코드 구현
func bfs(x: Int, y: Int) -> Int {
    // Queue
    var queue: [(Int, Int)] = []
    queue.append((x, y))
    
    // 큐가 빌 때까지 반복
    while !queue.isEmpty {
        let (x, y) = queue.removeFirst()
        // 현재 위치에서 네 방향으로의 위치 확인
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            // 미로 찾기 공간을 벗어난 경우 무시
            if nx < 0 || ny < 0 || nx >= n || ny >= m {
                continue
            }
            // 벽인 경우 무시
            if graph[nx][ny] == 0 {
                continue
            }
            // 해당 노드를 처음 방문하는 경우에만 최단 거리 기록
            if graph[nx][ny] == 1 && !(nx == 0 && ny == 0) {
                graph[nx][ny] = graph[x][y] + 1
                queue.append((nx, ny))
            }
        }
    }
    // 가장 오른쪽 아래까지의 최단 거리 반환
    return graph[n - 1][m - 1]ç
}
// BFS를 수행한 결과 출력
print(bfs(x: 0, y: 0))
