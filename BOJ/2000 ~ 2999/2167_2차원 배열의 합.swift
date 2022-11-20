let input = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (input[0], input[1])
var array = [[Int]]()
for _ in 0..<n {
    array.append(readLine()!.split(separator: " ").map { Int($0)! })
}
let t = Int(readLine()!)!
for _ in 0..<t {
    var sum = 0
    let coordinate = readLine()!.split(separator: " ").map { Int($0)! }
    let (i, j, x, y) = (coordinate[0], coordinate[1], coordinate[2], coordinate[3])
    for a in i...x {
        for b in j...y {
            sum += array[a - 1][b - 1]
        }
    }
    print(sum)
}
