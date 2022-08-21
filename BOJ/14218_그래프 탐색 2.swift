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

let n = file.readInt(), m = file.readInt()
var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)

for _ in 0..<m {
    let a = file.readInt(), b = file.readInt()
    graph[a].append(b)
    graph[b].append(a)
}

let q = file.readInt()

func bfs(start: Int) -> [Int] {
    var queue = [(start, 0)]
    var index = 0
    var visited = [Bool](repeating: false, count: n + 1)
    visited[start] = true
    var answer = [Int](repeating: -1, count: n + 1)
    answer[1] = 0
    
    while queue.count > index {
        let node = queue[index].0
        let depth = queue[index].1
        answer[node] = depth
        
        for nextNode in graph[node] {
            if !visited[nextNode] {
                visited[nextNode] = true
                queue.append((nextNode, depth + 1))
            }
        }
        index += 1
    }
    return Array(answer[1...])
}

for _ in 0..<q {
    let i = file.readInt(), j = file.readInt()
    graph[i].append(j)
    graph[j].append(i)
    bfs(start: 1).forEach {
        print($0, terminator: " ")
    }
    print()
    
}
