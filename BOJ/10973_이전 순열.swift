let n = Int(readLine()!)!
var array = readLine()!.split(separator: " ").map { Int($0)! }

if array == [Int](1...n) {
    print(-1)
} else {
    var switchIndex = 0
    for i in (1..<n).reversed() {
        if array[i] < array[i - 1] {
            switchIndex = i - 1
            break
        }
    }
    
    for i in (0..<n).reversed() {
        if array[i] < array[switchIndex] {
            array.swapAt(i, switchIndex)
            break
        }
    }
    let answer = array[0...switchIndex] + array[(switchIndex + 1)...].sorted(by: >)
    print(answer.map { String($0)}.joined(separator: " "))
}
