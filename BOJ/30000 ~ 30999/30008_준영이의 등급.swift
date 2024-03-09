let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
let score = readLine()!.split(separator: " ").map { score -> Int in
    let s = Int(score)! * 100 / n
    switch s {
    case 0...4: return 1
    case 5...11: return 2
    case 12...23: return 3
    case 24...40: return 4
    case 41...60: return 5
    case 61...77: return 6
    case 78...89: return 7
    case 90...96: return 8
    default: return 9
    }
}
print(score.map { String($0) }.joined(separator: " "))
