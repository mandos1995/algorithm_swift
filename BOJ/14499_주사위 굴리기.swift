let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var y = input[2], x = input[3]
let k = input[4]
var graph: [[Int]] = []

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)!} )
}


let dx = [0, 1, -1, 0, 0]
let dy = [0, 0, 0, -1, 1]

let commands = readLine()!.split(separator: " ").map { Int($0)! }
var dice = [0, 0, 0, 0, 0, 0]

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<m ~= x
}

func diceRolling(command: Int) {
    let temp = dice[0]
    switch command {
    case 1:
        dice[0] = dice[3]
        dice[3] = dice[5]
        dice[5] = dice[2]
        dice[2] = temp
    case 2:
        dice[0] = dice[2]
        dice[2] = dice[5]
        dice[5] = dice[3]
        dice[3] = temp
    case 3:
        dice[0] = dice[1]
        dice[1] = dice[5]
        dice[5] = dice[4]
        dice[4] = temp
    default:
        dice[0] = dice[4]
        dice[4] = dice[5]
        dice[5] = dice[1]
        dice[1] = temp
    }
}

for command in commands {
    if !isVaildCoord(y: y + dy[command], x: x + dx[command]) {
        continue
    }
    diceRolling(command: command)
    y += dy[command]
    x += dx[command]
    if graph[y][x] == 0 {
        graph[y][x] = dice[5]
    } else {
        dice[5] = graph[y][x]
        graph[y][x] = 0
    }
    print(dice[0])
}
