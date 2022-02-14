// 특정 원소가 속한 집합을 찾기
func findParent(x: Int) -> Int {
    // 루트 노드가 아니라면, 루트 노드를 찾을 때까지 재귀적으로 호출
    if parent[x] != x {
        parent[x] = findParent(x: parent[x])
    }
    return parent[x]
}

// 두 원소가 속한 집합을 합치기
func unionParent(a: Int, b: Int) {
    let a = findParent(x: a)
    let b = findParent(x: b)
    
    if a < b {
        parent[b] = a
    } else {
        parent[a] = b
    }
}

// 노드의 개수와 간선(union 연산)의 개수 입력받기
let input = readLine()!.split(separator: " ").map { Int($0)! }
let v = input[0], e = input[1]

// 부모 테이블 초기화
var parent = [Int](repeating: 0, count: v + 1)

// 모든 간선을 담을 리스트와 최종 비용을 담을 변수
var edges: [(Int, Int, Int)] = []
var result = 0

// 부모 테이블상에서, 부모를 자기 자신으로 초기화
for i in 1...v {
    parent[i] = i
}

// 모든 간선에 대한 정보를 입력받기
for _ in 0..<e {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1], cost = input[2]
    edges.append((cost, a, b))
}

// 간선을 비용순으로 정렬
edges.sort { $0.0 < $1.0 }
var last = 0 // 최소 신장 트리에 포함되는 간선 중에서 가장 비용이 큰 간선

// 간선을 하나씩 확인하며
for edge in edges {
    let cost = edge.0
    let a = edge.1
    let b = edge.2
    // 사이클이 발생하지 않는 경우에만 집합에 포함
    if findParent(x: a) != findParent(x: b) {
        unionParent(a: a, b: b)
        result += cost
        last = cost
    }
}

print(result - last)
