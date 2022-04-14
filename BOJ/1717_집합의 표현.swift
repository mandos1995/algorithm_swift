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

let input = [file.readInt(), file.readInt()]
let n = input[0], m = input[1]
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

func union(x: Int, y: Int) {
    let x = find(x: x)
    let y = find(x: y)
    
    if x != y {
        if x > y {
            parent[x] = y
        } else {
            parent[y] = x
        }
    }
}

func isSameParent(x: Int, y: Int) -> Bool {
    let x = find(x: x)
    let y = find(x: y)
    return x == y
}
var answer = ""
for _ in 0..<m {
    let input = [file.readInt(), file.readInt(), file.readInt()]
    let isUnion = (input[0] == 0)
    let a = input[1]
    let b = input[2]
    if isUnion {
        union(x: a, y: b)
    } else {
        answer += isSameParent(x: a, y: b) == true ? "YES\n" : "NO\n"
    }
}
print(answer)
