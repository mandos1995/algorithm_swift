var cardA = readLine()!.split(separator: " ").map { Int($0)! }
var cardB = readLine()!.split(separator: " ").map { Int($0)! }

while true {
    cardA[1] -= cardB[0]
    cardB[1] -= cardA[0]
    if cardA[1] <= 0 || cardB[1] <= 0 {
        break
    }
}

if cardA[1] <= 0 && cardB[1] <= 0 {
    print("DRAW")
} else if cardB[1] <= 0 {
    print("PLAYER A")
} else {
    print("PLAYER B")
}
