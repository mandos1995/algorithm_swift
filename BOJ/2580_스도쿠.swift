import Foundation
var board: [[Int]] = []
for _ in 0..<9 {
    board.append(readLine()!.split(separator: " ").map { Int($0)! })
}
var zeroCoord: [(Int, Int)] = []
for y in 0..<9 {
    for x in 0..<9 {
        if board[y][x] == 0 {
            zeroCoord.append((y, x))
        }
    }
}

func isVaildRow(y: Int, target: Int) -> Bool {
    for i in 0..<9 {
        if board[y][i] == target {
            return false
        }
    }
    return true
}

func isVaildColumn(x: Int, target: Int) -> Bool {
    for i in 0..<9 {
        if board[i][x] == target {
            return false
        }
    }
    return true
}

func isVaildRect(x: Int, y: Int, target: Int) -> Bool {
    let nx = x / 3 * 3
    let ny = y / 3 * 3
    for i in 0..<3 {
        for j in 0..<3 {
            if board[ny + i][nx + j] == target {
                return false
            }
        }
    }
    return true
}

func numberWrite(depth: Int) {
    if depth == zeroCoord.count {
        for y in 0..<9 {
            for x in 0..<9 {
                print(board[y][x], terminator: " ")
            }
            print()
        }
        exit(0)
    }
    
    for i in 1...9 {
        let y = zeroCoord[depth].0
        let x = zeroCoord[depth].1
        
        if isVaildRow(y: y, target: i) && isVaildColumn(x: x, target: i) && isVaildRect(x: x, y: y, target: i) {
            board[y][x] = i
            numberWrite(depth: depth + 1)
            board[y][x] = 0
        }
    }
}
numberWrite(depth: 0)
