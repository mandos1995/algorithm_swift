let input = readLine()!.split(separator: " ").map { Int($0)! }
let m = input[0], n = input[1]
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

// 큐 배열 초기화
var queue: [(Int, Int)] = []

// 토마토가 있는 좌표를 큐에 넣어줌
for i in 0..<n {
    for j in 0..<m {
        if graph[i][j] == 1 {
            queue.append((i, j))
        }
    }
}

// 이동할 4 방향 정의 (상, 하, 좌, 우)
let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

var result = 0

// BFS 구현
func bfs() {
    // queue를 removeFirst 하면 시간초과가 계속남.. -> 제거하지 않고 인덱스로 찾는 방식으로 구현
    // removeFirst는 O(n)의 시간복잡도를 갖기 때문..
    var index = 0
    while index < queue.count {
        let (x, y) = queue[index]
        index += 1
        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            // 상자의 범위 넘어가면 무시
            if nx < 0 || nx >= n || ny < 0 || ny >= m {
                continue
            }
            
            // 토마토가 들어있지 않은 칸 무시
            if graph[nx][ny] == -1 {
                continue
            }
            
            // 익지 않은 토마토가 있다면 그 토마토의 값의 일수를 더해주면서 그래프 채움
            if graph[nx][ny] == 0 {
                graph[nx][ny] = graph[x][y] + 1
                queue.append((nx, ny))
            }
        }
    }
}

// BFS 실행
bfs()
let array = graph.flatMap { $0 }

if array.contains(0) {
    print(-1)
} else {
    print(array.max()! - 1)
}
