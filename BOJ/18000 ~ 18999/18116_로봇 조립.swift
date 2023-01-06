func findParent(parent: [Int], x: Int) -> Int {
    if parent[x] != x {
        return findParent(parent: parent, x: parent[x])
    }
    return x
}

func unionParent(a: Int, b: Int) {
    let a = findParent(parent: parent, x: a)
    let b = findParent(parent: parent, x: b)
    if a == b {
        return
    }
    if a < b {
        parent[b] = a
        count[a] += count[b]
        count[b] = 0
    } else {
        parent[a] = b
        count[b] += count[a]
        count[a] = 0
    }
}

var parent = [Int](repeating: 0, count: 1_000_001).enumerated().map { $0.offset }

var count = [Int](repeating: 1, count: 1_000_001)

let n = Int(readLine()!)!
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let cmd = input[0]
    let a = Int(input[1])!
    if cmd == "I" {
        let b = Int(input[2])!
        unionParent(a: a, b: b)
    } else {
        print(count[findParent(parent: parent, x: a)])
    }
}
