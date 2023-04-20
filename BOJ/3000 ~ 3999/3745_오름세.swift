import Foundation

var answer = ""
var buffer: [UInt8] = Array(FileHandle.standardInput.readDataToEndOfFile()), byteIdx = 0; buffer.append(0)

@inline(__always) func readByte() -> UInt8 {
    defer { byteIdx += 1 }
    let bp = buffer.withUnsafeBufferPointer { $0[byteIdx] }
    if bp == 0 { print(answer); exit(0) }
    return bp
}

@inline(__always) func readInt() -> Int {
    var number = 0, byte = readByte(), isNegative = false
    while byte == 10 || byte == 32 { byte = readByte() }
    if byte == 45 { byte = readByte(); isNegative = true }
    while 48...57 ~= byte { number = number * 10 + Int(byte - 48); byte = readByte() }
    return number * (isNegative ? -1 : 1)
}

while true {
    let n = readInt()
    var array: [Int] = []
    for _ in 0..<n { array.append(readInt()) }
    var LIS = [array.first!]
    
    for i in 1..<n {
        if LIS.last! < array[i] {
            LIS.append(array[i])
            continue
        }
        var start = 0
        var end = LIS.count - 1
        
        while start <= end {
            let mid = (start + end) / 2
            if LIS[mid] < array[i] {
                start = mid + 1
            } else {
                end = mid - 1
            }
        }
        LIS[start] = array[i]
    }
    answer.write("\(LIS.count)\n")
}
