let printCount = Int(readLine()!)!

func drawStar(n: Int, pattern: [String]) {
    if n - 1 == printCount {
        pattern.forEach {
            print($0)
        }
        return
    }
    
    if n == 1 {
        drawStar(n: n + 1, pattern: ["*"])
        return
    }
    
    let top = String(repeating: "*", count: 4 * n - 3)
    let second = "*" + String(repeating: " ", count: 4 * n - 5) + "*"
    let mid = pattern.map { "* " + $0 + " *"}
    let newPattern = [top] + [second] + mid + [second] + [top]
    
    drawStar(n: n + 1, pattern: newPattern)
}

drawStar(n: 1, pattern: ["*"])
