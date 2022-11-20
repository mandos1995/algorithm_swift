var startBoard = ""
for _ in 0..<3 {
    let input = readLine()!.split(separator: " ").map { String($0) }
    startBoard += input.reduce("", +)
}
var visited = Set<[String]>()
let start = startBoard.map { String($0) }
var queue = [(start, 0)]

let dx = [1, 3, -1, -3]

func isVaildCoord(x: Int) -> Bool {
    return (0 <= x && x < 9)
}

var index = 0
var isPossible = false
while index < queue.count {
    var board = queue[index].0
    let d = queue[index].1
    
    let x = board.firstIndex(of: "0")!
    
    visited.insert(board)
    
    if board == ["1", "2", "3", "4", "5", "6", "7", "8", "0"] {
        isPossible = true
        print(d)
        break
    }
    
    for i in 0..<4 {
        let nx = x + dx[i]
        let nd = d + 1
        
        // index 2번째 칸에서는 3번째 칸으로 갈 수 없으므로
        if x % 3 == 2 && i == 0 {
            continue
        }
        // index 3번째 칸에서는 2번째 칸으로 갈 수 없으므로
        if x % 3 == 0 && i == 2 {
            continue
        }
        
        if isVaildCoord(x: nx) {
            board.swapAt(nx, x)
            if !visited.contains(board) {
                visited.insert(board)
                queue.append((board, nd))
            }
            board.swapAt(nx, x)
        }
    }
    index += 1
}

if !isPossible {
    print(-1)
}
