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
var a: [Int] = []
var b: [Int] = []
for _ in 0..<n {
    a.append(file.readInt())
}
for _ in 0..<m {
    b.append(file.readInt())
}
var aIndex = 0
var bIndex = 0
var answer = ""
for _ in 0..<n + m {
    if aIndex == n {
        answer += "\(b[bIndex]) "
        bIndex += 1
    } else if bIndex == m {
        answer += "\(a[aIndex]) "
        aIndex += 1
    } else if a[aIndex] <= b[bIndex] {
        answer += "\(a[aIndex]) "
        aIndex += 1
    } else {
        answer += "\(b[bIndex]) "
        bIndex += 1
    }
}
answer.removeLast()
print(answer)
