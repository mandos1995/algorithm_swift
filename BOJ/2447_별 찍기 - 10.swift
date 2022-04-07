let n = Int(readLine()!)!

func drawStar(n: Int, pattern: [String]) {
    if n == 1 {
        pattern.forEach {
            print($0)
        }
        return
    }
    
    let row1 = pattern.map { $0 + $0 + $0 }
    let row2 = pattern.map { $0 + String(repeating: " ", count: $0.count) + $0 }
    let newPattern = row1 + row2 + row1
    
    drawStar(n: n / 3, pattern: newPattern)
}

drawStar(n: n, pattern: ["*"])
