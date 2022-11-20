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
func solution() {
    let n = file.readInt(), k = file.readInt()
    var times = [0]
    for _ in 0..<n {
        times.append(file.readInt())
    }
    var result = [Int](repeating: 0, count: n + 1)
    var indegree = [Int](repeating: 0, count: n + 1)
    var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)
    for _ in 0..<k {
        let a = file.readInt(), b = file.readInt()
        graph[a].append(b)
        indegree[b] += 1
    }
    
    let end = file.readInt()
    func topologySort() {
        var queue: [Int] = []
        
        for i in 1...n {
            if indegree[i] == 0 {
                queue.append(i)
                result[i] = times[i]
            }
        }
        var index = 0
        while index < queue.count {
            let node = queue[index]
            if node == end {
                break
            }
            for nextNode in graph[node] {
                indegree[nextNode] -= 1
                result[nextNode] = max(result[nextNode], result[node] + times[nextNode])
                if indegree[nextNode] == 0 {
                    queue.append(nextNode)
                }
            }
            index += 1
        }
        print(result[end])
    }
    topologySort()
}

for _ in 0..<file.readInt() {
    solution()
}
