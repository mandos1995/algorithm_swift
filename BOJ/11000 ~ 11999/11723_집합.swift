import Foundation

final class FileIO {
    @inline(__always) private var buffer: [UInt8] = Array(FileHandle.standardInput.readDataToEndOfFile()) + [0], byteIdx = 0

    @inline(__always) private func readByte() -> UInt8 {
        defer { byteIdx += 1 }
        return buffer.withUnsafeBufferPointer { $0[byteIdx] }
    }

    @inline(__always) func readInt() -> Int {
        var number = 0, byte = readByte(), isNegative = false
        while byte == 10 || byte == 32 { byte = readByte() }
        if byte == 45 { byte = readByte(); isNegative = true }
        while 48...57 ~= byte { number = number * 10 + Int(byte - 48); byte = readByte() }
        return number * (isNegative ? -1 : 1)
    }

    @inline(__always) func readStirngSum() -> Int {
        var byte = readByte()
        while byte == 10 || byte == 32 { byte = readByte() }
        var sum = Int(byte)
        while byte != 10 && byte != 32 && byte != 0 { byte = readByte(); sum += Int(byte) }
        return sum - Int(byte)
    }

    @inline(__always) private func write(_ output: String) {
        FileHandle.standardOutput.write(output.data(using: .utf8)!)
    }
}

enum Command: Int {
    case add = 297
    case remove = 654
    case check = 510
    case toggle = 642
    case all = 313
    case empty = 559
}

let file = FileIO()
let m = file.readInt()
var bit = 0
var answer = ""
for _ in 0..<m {
    let command = Command(rawValue: file.readStirngSum())!
    switch command {
    case .add:
        bit |= (1 << file.readInt())
    case .remove:
        bit &= ~(1 << file.readInt())
    case .check:
        answer += "\(bit & (1 << file.readInt()) == 0 ? 0 : 1)\n"
    case .toggle:
        bit ^= (1 << file.readInt())
    case .all:
        bit |= ~0
    case .empty:
        bit &= 0
    }
}
print(answer)
