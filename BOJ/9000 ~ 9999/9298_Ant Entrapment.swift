let t = Int(readLine()!)!

for i in 1...t {
    solution(i)
}

func solution(_ i: Int) {
    let n = Int(readLine()!)!
    var maxX = -1000.0, maxY = -1000.0, minX = 1000.0, minY = 1000.0
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map { Double($0)! }
        let x = input[0], y = input[1]
        maxX = max(x, maxX)
        maxY = max(y, maxY)
        minX = min(x, minX)
        minY = min(y, minY)
    }
    
    let h = maxY - minY
    let w = maxX - minX
    print("Case \(i): Area \(h * w), Perimeter \(2 * h + 2 * w)")
}
