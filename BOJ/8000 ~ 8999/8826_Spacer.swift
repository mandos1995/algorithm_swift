let t = Int(readLine()!)!
for _ in 0..<t { solution() }

func solution() {
    let n = Int(readLine()!)!
    let direction = readLine()!.map { $0 }
    var x = 0, y = 0
    for dir in direction {
        switch dir {
        case "E": x += 1
        case "W": x -= 1
        case "S": y += 1
        case "N": y -= 1
        default: return
        }
    }
    print(abs(x) + abs(y))
}
