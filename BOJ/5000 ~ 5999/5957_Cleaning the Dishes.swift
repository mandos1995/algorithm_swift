let n = Int(readLine()!)!
var initStack = [Int](1...n).reversed().map { $0 }
var d: [Int] = []
var c: [Int] = []
while let input = readLine()?.split(separator: " ").map({ Int($0)! }) {
    let cmd = input[0], count = input[1]
    switch cmd {
    case 1:
        for _ in 0..<count { d.append(initStack.removeLast()) }
    default:
        for _ in 0..<count { c.append(d.removeLast()) }
    }
}
c.reversed().forEach { print($0) }
