let n = Int(readLine()!)!
let levels = readLine()!.split(separator: " ").map { Int($0)! }

for level in levels {
    print(makeNum(level), terminator: " ")
}


func makeNum(_ level: Int) -> Int {
    switch level {
    case ..<250:
        return 4
    case 250..<275:
        return 3
    case 275..<300:
        return 2
    case 300...:
        return 1
    default:
        return 0
    }
}
