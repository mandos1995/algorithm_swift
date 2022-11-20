let n = Int(readLine()!)!
for _ in 0..<n {
    let t = Int(readLine()!)!
    var player1 = 0
    var player2 = 0
    for _ in 0..<t {
        let input = readLine()!.split(separator: " ").map { String($0) }
        if input[0] == "R" {
            if input[1] == "P" {
                player2 += 1
            }
            if input[1] == "S" {
                player1 += 1
            }
        }
        if input[0] == "P" {
            if input[1] == "R" {
                player1 += 1
            }
            if input[1] == "S" {
                player2 += 1
            }
        }
        if input[0] == "S" {
            if input[1] == "R" {
                player2 += 1
            }
            if input[1] == "P" {
                player1 += 1
            }
        }
    }
    if player1 > player2 {
        print("Player 1")
    } else if player1 < player2 {
        print("Player 2")
    } else {
        print("TIE")
    }
}
