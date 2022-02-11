let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], a = input[1], b = input[2]
var room: [[Int]] = []
for _ in 0..<n {
    room.append(readLine()!.split(separator: " ").map { Int($0)! })
}
var isHandsome: Bool = false
for i in 0..<n {
    if room[a - 1][i] > room[a - 1][b - 1] || room[i][b - 1] > room[a - 1][b - 1]{
        isHandsome = true
        break
    }
}

isHandsome == true ? print("ANGRY") : print("HAPPY")
