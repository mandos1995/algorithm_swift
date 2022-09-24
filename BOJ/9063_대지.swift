let n = Int(readLine()!)!
var minX = 10_000
var minY = 10_000
var maxX = -10_000
var maxY = -10_000
if n == 1 {
    print(0)
} else {
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        minX = min(input[0], minX)
        maxX = max(input[0], maxX)
        minY = min(input[1], minY)
        maxY = max(input[1], maxY)
    }
    print((maxX - minX) * (maxY - minY))
}
