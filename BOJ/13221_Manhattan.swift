let targetCoord = readLine()!.split(separator: " ").map { Int($0)! }
let n = Int(readLine()!)!
var coords: [[Int]] = []
for _ in 0..<n {
    coords.append(readLine()!.split(separator: " ").map { Int($0)! })
}

let answer = coords.sorted {
    abs($0[0] - targetCoord[0]) + abs($0[1] - targetCoord[1]) <
    abs($1[0] - targetCoord[0]) + abs($1[1] - targetCoord[1])
}.first!

print(answer[0], answer[1])
