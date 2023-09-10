let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { String($0) }
let transArray = array.enumerated().map { Int($0.element) ?? Int($0.offset + 1) }
if transArray == (1...n).map({ $0 }) {
    print("makes sense")
} else {
    print("something is fishy")
}
