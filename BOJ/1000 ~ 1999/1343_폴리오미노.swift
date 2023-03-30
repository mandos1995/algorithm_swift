import Foundation

var board = readLine()!
board = board.replacingOccurrences(of: "XXXX", with: "AAAA")
board = board.replacingOccurrences(of: "XX", with: "BB")
board.contains("X") ? print(-1) : print(board)
