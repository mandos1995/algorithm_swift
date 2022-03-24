let n = Int(readLine()!)!
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

var visited = Set<[[Int]]>()

var queue = [(graph, 0)]
var index = 0

var answer = 0
while index < queue.count {
    var board = queue[index].0
    let d = queue[index].1
    visited.insert(board)
    
    answer = max(answer, board.flatMap { $0 }.max()!)
    
    if d > 5 {
        break
    }
    
    // 동쪽 이동
    for y in 0..<n {
        for x in (1..<n).reversed() {
            var i = 1
            while true {
                if x - i < 0 {
                    break
                }

                if board[y][x] == board[y][x - i] {
                    board[y][x] = board[y][x - i] * 2
                    board[y][x - i] = 0
                    break
                }
                if board[y][x] == 0 {
                    break
                }
                if board[y][x - i] == 0 {
                    i += 1
                    continue
                }
                if board[y][x - i] != 0 {
                    break
                }
                i += 1
            }
        }
    }

    // 0 땡겨서 0 채우는 방법
    for y in 0..<n {
        board[y] = board[y].filter { $0 != 0 }
        board[y] = [Int](repeating: 0, count: n - board[y].count) + board[y]
    }
    queue.append((board, d + 1))

    // 서쪽 이동
    board = queue[index].0
    
    for y in 0..<n {
        for x in 0..<n - 1 {
            var i = 1
            while true {
                if x + i > n - 1 {
                    break
                }
                
                if board[y][x] == 0 {
                    break
                }
                
                if board[y][x + i] == 0 {
                    i += 1
                    continue
                }
                
                if board[y][x] == board[y][x + i] {
                    board[y][x] = board[y][x + i] * 2
                    board[y][x + i] = 0
                    break
                }
                
                if board[y][x + i] != 0 {
                    break
                }
                i += 1
            }
        }
    }
    
    // 왼쪽으로 땡기기
    for y in 0..<n {
        board[y] = board[y].filter { $0 != 0 }
        board[y] = board[y] + [Int](repeating: 0, count: n - board[y].count)
        
    }
    queue.append((board, d + 1))
    
    // 북쪽으로 이동
    board = queue[index].0
    for x in 0..<n {
        for y in 0..<n - 1 {
            var i = 1
            while true {
                if y + i > n - 1 {
                    break
                }
                
                if board[y][x] == 0 {
                    break
                }
                
                if board[y][x] == board[y + i][x] {
                    board[y][x] = board[y + i][x] * 2
                    board[y + i][x] = 0
                    break
                }
                if board[y + i][x] == 0 {
                    i += 1
                    continue
                }
                
                if board[y + i][x] != 0 {
                    break
                }
                i += 1
            }
        }
        
    }
    // 위로 당기기
    for x in 0..<n {
        for y in 0..<n - 1 {
            if board[y][x] == 0 {
                var i = 1
                while true {
                    if y + i > n - 1 {
                        break
                    }
                    
                    if board[y + i][x] == 0 {
                        i += 1
                        continue
                    }
                    if board[y + i][x] != 0 {
                        board[y][x] = board[y + i][x]
                        board[y + i][x] = 0
                        break
                    }
                    i += 1
                }
            }
        }
    }
    queue.append((board, d + 1))

    // 남쪽으로 이동
    board = queue[index].0
    for x in 0..<n {
        for y in (1..<n).reversed() {
            var i = 1
            while true {
                if y - i < 0 {
                    break
                }
                
                if board[y][x] == 0 {
                    break
                }
                
                if board[y][x] == board[y - i][x] {
                    board[y][x] = board[y - i][x] * 2
                    board[y - i][x] = 0
                    break
                }
                
                if board[y - i][x] == 0 {
                    i += 1
                    continue
                }
                
                if board[y - i][x] != 0 {
                    break
                }
                i += 1
            }
        }
    }
    
    // 아래로 땅기기
    for x in 0..<n {
        for y in (1..<n).reversed() {
            if board[y][x] == 0 {
                var i = 1
                while true {
                    if y - i < 0 {
                        break
                    }
                    
                    if board[y - i][x] == 0 {
                        i += 1
                        continue
                    }
                    
                    if board[y - i][x] != 0 {
                        board[y][x] = board[y - i][x]
                        board[y - i][x] = 0
                        break
                    }
                    i += 1
                }
            }
        }
    }
    queue.append((board, d + 1))
    
    index += 1
}
print(answer)
