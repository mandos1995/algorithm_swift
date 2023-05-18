import Foundation

typealias Edge = (x: Int, y: Int, cost: Int)

var answer = ""
let file = FileIO()

while true {
    let m = file.readInt(), n = file.readInt()
    if m == 0 && n == 0 {
        break
    }
    var edges: [Edge] = []
    var parent = [Int](0..<m)
    var total = 0
    
    for _ in 0..<n {
        let x = file.readInt(), y = file.readInt(), z = file.readInt()
        edges.append(Edge(x: x, y: y, cost: z))
        total += z
    }
    
    func find(_ x: Int) -> Int {
        if parent[x] == x {
            return x
        }
        parent[x] = find(parent[x])
        return parent[x]
    }
    
    func union(_ a: Int, _ b: Int) {
        let a = find(a)
        let b = find(b)
        
        if a == b {
            return
        }
        if a > b {
            parent[a] = b
        } else {
            parent[b] = a
        }
    }
    
    edges.sort { $0.cost < $1.cost }
    
    var cost = 0
    
    for edge in edges {
        let start = edge.x
        let end = edge.y
        if find(start) == find(end) {
            continue
        }
        union(start, end)
        cost += edge.cost
    }
    
    answer += "\(total - cost)\n"
}

print(answer)

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
