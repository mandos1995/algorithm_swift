let n = Int(readLine()!)!
for _ in 0..<n {
    let input = readLine()!.split(separator: "-").map { String($0) }
    let firstPart = input[0]
    let secondPart = Int(input[1])!
    var firstScore = 0
    
    for (index, f) in firstPart.reversed().enumerated() {
        firstScore += pow26(f.asciiValue! - 65, index)
    }
    firstScore = abs(firstScore - secondPart)
    firstScore <= 100 ? print("nice") : print("not nice")
}

func pow26(_ n: UInt8, _ r: Int) -> Int {
    var answer = 1
    if r == 0 {
        return Int(n)
    }
    for _ in 0..<r {
        answer *= 26
    }
    return Int(n) * answer
}
