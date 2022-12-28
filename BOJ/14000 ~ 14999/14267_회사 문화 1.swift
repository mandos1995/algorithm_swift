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
var tree = [[Int]](repeating: [], count: n + 1)
var boss: [Int] = []

for _ in 1...n {
    boss.append(file.readInt())
}

for i in 2...n {
    tree[boss[i - 1]].append(i)
}
var scores = [Int](repeating: 0, count: n + 1)

for _ in 1...m {
    let person = file.readInt(), score = file.readInt()
    scores[person] += score
}

func dfs(n: Int) {
    for next in tree[n] {
        scores[next] += scores[n]
        dfs(n: next)
    }
}

dfs(n: 1)
scores[1...].forEach { print($0, terminator: " ")}
