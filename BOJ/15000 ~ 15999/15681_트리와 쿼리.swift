let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], r = input[1], q = input[2]
var edges = [[Int]](repeating: [], count: n + 1)
for _ in 0..<n - 1 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let u = input[0], v = input[1]
    edges[u].append(v)
    edges[v].append(u)
}

var parent = [Int](repeating: -1, count: n + 1)

func makeTree(c: Int, p: Int) {
    for nextNode in edges[c] {
        if nextNode != p {
            parent[nextNode] = c
            makeTree(c: nextNode, p: c)
        }
    }
}

makeTree(c: r, p: -1)

var size = [Int](repeating: 0, count: n + 1)

func countSubtreeNodes(currentNode: Int) {
    size[currentNode] = 1
    for nextNode in edges[currentNode] {
        if nextNode != parent[currentNode] {
            countSubtreeNodes(currentNode: nextNode)
            size[currentNode] += size[nextNode]
        }
    }
}

countSubtreeNodes(currentNode: r)

for _ in 0..<q {
    let node = Int(readLine()!)!
    print(size[node])
}
