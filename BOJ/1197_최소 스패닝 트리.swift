import Foundation

// 라이노님의 FileIO
final class FileIO {
    private var buffer:[UInt8]
    private var index: Int
    
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
        index = 0
    }
    
    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }
        
        return buffer.withUnsafeBufferPointer { $0[index] }
    }
    
    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45{ isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }
        
        return sum * (isPositive ? 1:-1)
    }
    
    @inline(__always) func readString() -> String {
        var str = ""
        var now = read()
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        
        while now != 10
                && now != 32 && now != 0 {
            str += String(bytes: [now], encoding: .ascii)!
            now = read()
        }
        
        return str
    }
}

// 풀이
let file = FileIO()

struct Edge {
    let startNode: Int
    let endNode: Int
    let cost: Int
}

let v = file.readInt(), e = file.readInt()

var edges: [Edge] = []
for _ in 0..<e {
    edges.append(Edge(startNode: file.readInt(), endNode: file.readInt(), cost: file.readInt()))
}

edges = edges.sorted { $0.cost < $1.cost }

var parent = [Int](repeating: 0, count: v + 1)

for i in 1...v {
    parent[i] = i
}

func find(x: Int) -> Int {
    if parent[x] == x {
        return x
    }
    parent[x] = find(x: parent[x])
    return parent[x]
}

func union(a: Int, b: Int) {
    let a = find(x: a)
    let b = find(x: b)
    
    if a > b {
        parent[a] = b
    } else {
        parent[b] = a
    }
}

func isSameParent(a: Int, b: Int) -> Bool {
    let a = find(x: a)
    let b = find(x: b)
    return a == b
}

var answer = 0

for edge in edges {
    if isSameParent(a: edge.startNode, b: edge.endNode) {
        continue
    }
    union(a: edge.startNode, b: edge.endNode)
    answer += edge.cost
}

print(answer)
