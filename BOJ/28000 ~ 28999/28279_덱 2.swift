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

struct Deque<T> {
    private var leftArray: [T] = []
    private var rightArray: [T] = []
    private var leftIndex: Int = 0
    private var rightIndex: Int = 0
    
    var isEmpty: Bool {
        return leftIndex + rightIndex >= leftArray.count + rightArray.count
    }
    
    var size: Int {
        return (leftArray.count + rightArray.count) - (leftIndex + rightIndex)
    }
    
    var front: T? {
        if isEmpty {
            return nil
        }
        
        if leftIndex >= leftArray.count {
            return rightArray[rightIndex]
        }
        
        return leftArray.last
    }
    
    var back: T? {
        if isEmpty {
            return nil
        }
        
        if rightIndex >= rightArray.count {
            return leftArray[leftIndex]
        }
        
        return rightArray.last
    }
    
    mutating func pushLeft(_ element: T) {
        leftArray.append(element)
    }
    
    mutating func popLeft() -> T? {
        if isEmpty {
            return nil
        }
        
        if leftIndex >= leftArray.count {
            let element = rightArray[rightIndex]
            rightIndex += 1
            return element
        }
        
        return leftArray.popLast()
    }
    
    mutating func pushRight(_ element: T) {
        rightArray.append(element)
    }
    
    mutating func popRight() -> T? {
        if isEmpty {
            return nil
        }
        
        if rightIndex >= rightArray.count {
            let element = leftArray[leftIndex]
            leftIndex += 1
            return element
        }
        
        return rightArray.popLast()
    }
}

let file = FileIO()
let n = file.readInt()
var answer = ""
var deque = Deque<Int>()

for _ in 0..<n {
    let c = file.readInt()
    switch c {
    case 1:
        let x = file.readInt()
        deque.pushLeft(x)
    case 2:
        let x = file.readInt()
        deque.pushRight(x)
    case 3:
        answer += "\(deque.popLeft() ?? -1)\n"
    case 4:
        answer += "\(deque.popRight() ?? -1)\n"
    case 5:
        answer += "\(deque.size)\n"
    case 6:
        answer += "\(deque.isEmpty ? 1 : 0)\n"
    case 7:
        answer += "\(deque.front ?? -1)\n"
    case 8:
        answer += "\(deque.back ?? -1)\n"
    default: fatalError()
    }
}

print(answer)
