var board = [[Int]](repeating: [Int](repeating: 0, count: 6), count: 6)

let dy = [-2, -2, -1, -1, 1, 1, 2, 2]
let dx = [-1, 1, -2, 2, -2, 2, -1, 1]

let input = readLine()!.map { $0 }
let start = (Int(input[0].asciiValue! - 65), Int(String(input[1]))! - 1)
var prev = start
board[start.0][start.1] = 1

func isValidCoord(y: Int, x: Int) -> Bool {
    return 0..<6 ~= y && 0..<6 ~= x
}


for i in 2...36 {
    let input = readLine()!.map { $0 }
    let coord = (Int(input[0].asciiValue! - 65), Int(String(input[1]))! - 1)
    var isRoute = false
    
    for j in 0..<8 {
        let ny = dy[j] + prev.0
        let nx = dx[j] + prev.1
        
        if coord == (ny, nx) {
            isRoute = true
            break
        }
    }
    
    if isValidCoord(y: coord.0, x: coord.1) && board[coord.0][coord.1] == 0 && isRoute {
        board[coord.0][coord.1] = i
    }
    prev = coord
}

var answer = false
var end = (0, 0)

if !board.flatMap({ $0 }).contains(0) {
    for y in 0..<6 {
        for x in 0..<6 {
            if board[y][x] == 36 {
                for i in 0..<8 {
                    let ny = dy[i] + y
                    let nx = dx[i] + x
                    
                    if isValidCoord(y: ny, x: nx) && start == (ny, nx) {
                        answer = true
                        break
                    }
                }
            }
        }
    }
}

print(answer ? "Valid" : "Invalid")
