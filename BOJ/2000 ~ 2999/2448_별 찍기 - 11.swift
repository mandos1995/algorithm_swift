let n = Int(readLine()!)!

func drawStar(n: Int) -> [String] {
    if n == 3 {
        return ["  *  ", " * * ", "*****"]
    }
    let pattern = drawStar(n: n / 2)
    var newParttern: [String] = []
    
    for p in pattern {
        newParttern.append(String(repeating: " ", count: n / 2) + p + String(repeating: " ", count: n / 2))
    }
    
    for p in pattern {
        newParttern.append(p + " " + p)
    }
    
    return newParttern
}

print(drawStar(n: n).joined(separator: "\n"))
