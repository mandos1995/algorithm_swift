let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var picture = [[Int]](repeating: [Int](repeating: 0, count: 101), count: 101)

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x1 = input[0], y1 = input[1], x2 = input[2], y2 = input[3]
    for y in y1...y2 {
        for x in x1...x2 {
            picture[y][x] += 1
        }
    }
}

print(picture.flatMap { $0 }.filter { $0 > m }.count)
