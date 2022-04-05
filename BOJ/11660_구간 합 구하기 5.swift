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
var array = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n)
for i in 0..<n {
    array[i].append(0)
    for _ in 0..<n {
        array[i].append(file.readInt())
    }
}

var sumArray = [[Int]](repeating: [Int](repeating: 0, count: n + 1), count: n)

var total = 0
for y in 0..<n {
    for x in 1...n {
        total += array[y][x]
        sumArray[y][x] += total
    }
}

for y in 1..<n {
    sumArray[y][0] = sumArray[y - 1][n]
}

for _ in 0..<m {
    let input = [file.readInt(), file.readInt(), file.readInt(), file.readInt()]
    var answer = 0
    let y1 = input[0] - 1, x1 = input[1], y2 = input[2] - 1, x2 = input[3]
    for y in y1...y2 {
        answer += (sumArray[y][x2] - sumArray[y][x1 - 1])
    }
    print(answer)
}
