let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]

var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n)

for i in 0..<n {
    let input = readLine()!
    for j in input {
        graph[i].append(Int(String(j))!)
    }
}

// 이동할 네 방향 정의(상, 하, 좌, 우)
let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

func bfs(_ x: Int, _ y: Int) -> Int {
    var queue = [(x, y)]
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
            if graph[nx][ny] == 1 {
                graph[nx][ny] = graph[x][y] + 1
                queue.append((nx, ny))
            }
        }
    }
    // 가장 오른쪽 아래까지의 최단 거리 반환
    return graph[n - 1][m - 1]
}
// bfs를 수행한 결과 출력
print(bfs(0, 0))
