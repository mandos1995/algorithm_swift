import Foundation

// 라이노님 빠른 입력 FileIO
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
    
    @inline(__always) func readString() -> Int {
        var str = 0
        var now = read()
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        
        while now != 10
                && now != 32 && now != 0 {
            str += Int(now)
            now = read()
        }
        
        return str
    }
}

// 풀이
let file = FileIO()

let n = file.readInt()
var queue: [Int] = []
var index = 0
var output = ""
for _ in 0..<n {
    let command = file.readString()
    switch command {
    case 448:
        queue.append(file.readInt())
    case 335:
        if index >= queue.count {
            output += "-1\n"
        } else {
            output += "\(queue[index])\n"
            index += 1
        }
    case 443:
        output += "\(queue.count - index)\n"
    case 559:
        output += index >= queue.count ? "1\n" : "0\n"
    case 553:
        output += index >= queue.count ? "-1\n" : "\(queue[index])\n"
    case 401:
        output += index >= queue.count ? "-1\n" : "\(queue.last!)\n"
    default:
        continue
    }
}
print(output)
