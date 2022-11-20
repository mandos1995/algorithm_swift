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
let n = file.readInt()
var parent = [Int](repeating: 0, count: n + 1)
for i in 1...n {
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
    
    if a != b {
        if a > b {
            parent[a] = b
        } else {
            parent[b] = a
        }
    }
}

func isSameParent(a: Int, b: Int) -> Bool {
    let a = find(x: a)
    let b = find(x: b)
    
    return a == b
}

for _ in 0..<n - 2 {
    union(a: file.readInt(), b: file.readInt())
}

for i in 2...n {
    if !isSameParent(a: 1, b: i) {
        print(1, i)
        break
    }
}
