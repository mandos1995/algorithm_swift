// 노드의 개수 입력받기
let v = Int(readLine()!)!
// 모든 노드에 대한 진입차수는 0으로 초기화
var indegree = [Int](repeating: 0, count: v + 1)
// 각 노드에 연결된 간선 정보를 담기 위한 연결 리스트(그래프) 초기화
var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: v + 1)
// 각 강의 시간을 0으로 초기화
var time = [Int](repeating: 0, count: v + 1)

// 방향 그래프의 모든 간선 정보를 입력받기
for i in 1...v {
    let data = readLine()!.split(separator: " ").map { Int($0)! }
    time[i] = data[0]   // 첫 번째 수는 시간 정보를 담고 있음
    for x in 1..<data.count - 1 {
        indegree[i] += 1
        graph[data[x]].append(i)
    }
}

// 위상 정렬 함수
func topologySort() {
    var result = time   // 알고리즘 수행 결과를 담을 리스트
    var q: [Int] = []
    
    // 처음 시작할 때는 진입차수가 0인 노드를 큐에 삽입
    for i in 1...v {
        if indegree[i] == 0 {
            q.append(i)
        }
    }
    
    // 큐가 빌 때까지 반복
    while !q.isEmpty {
        // 큐에서 원소 꺼내기
        let now = q.removeFirst()
        // 해당 원소와 연결된 노드들의 진입차수에서 1 빼기
        for i in graph[now] {
            result[i] = max(result[i], result[now] + time[i])
            indegree[i] -= 1
            // 새롭게 진입차수가 0이 되는 노드를 큐에 삽입
            if indegree[i] == 0 {
                q.append(i)
            }
        }
    }
    
    // 위상 정렬을 수행한 결과 출력
    for i in 1...v {
        print(result[i])
    }
    
}

topologySort()
