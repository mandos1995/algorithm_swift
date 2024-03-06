let n = Int(readLine()!)!
var coord: [(x: Int, y: Int)] = []
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x = input.first!, y = input.last!
    coord.append((x, y))
}
var answer = 0
for i in 0..<n-1 {
    answer += abs(coord[i].x - coord[i + 1].x) + abs(coord[i].y - coord[i + 1].y)
}
print(answer)
