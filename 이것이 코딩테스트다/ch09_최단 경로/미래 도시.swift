let INF = 1_000_000_000  // 무한을 의미하는 값으로 10억을 설정

// 노드의 개수 및 간선의 개수를 입력받기
let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
// 2차원 리스트(그래프 표현)을 만들고, 모든 값을 무한으로 초기화
var graph = [[Int]](repeating: [Int](repeating: INF, count: n + 1), count: n + 1)

// 자기 자신에서 자기 자신으로 가는 비용은 0으로 초기화
for a in 1...n {
    for b in 1...n {
        if a == b {
            graph[a][b] = 0
        }
    }
}

// 각 간선에 대한 정보를 입력받아, 그 값으로 초기화
for _ in 0..<m {
    // A와 B가 서로에게 가는 비용은 1이라고 설정
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    graph[a][b] = 1
    graph[b][a] = 1
}

// 거쳐 갈 노드 X와 최종 목적지 노드 K를 입력받기
let node = readLine()!.split(separator: " ").map { Int($0)! }
let x = node[0], k = node[1]

// 점화식에 따라 플로이드 워셜 알고리즘을 수행
for k in 1...n {
    for a in 1...n {
        for b in 1...n {
            graph[a][b] = min(graph[a][b], graph[a][k] + graph[k][b])
        }
    }
}

// 수행된 결과를 출력
let distance = graph[1][k] + graph[k][x]

// 도달할 수 없는 경우 -1을 출력
if distance >= INF {
    print(-1)
} else { // 도달할 수 있다면 최단 거리를 출력
    print(distance)
}
