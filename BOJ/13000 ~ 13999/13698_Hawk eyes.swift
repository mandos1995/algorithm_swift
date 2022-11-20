let input = readLine()!
var cup = [1, 2, 3, 4]
var temp = 0
for i in input {
    switch String(i) {
    case "A":
        cup.swapAt(0, 1)
    case "B":
        cup.swapAt(0, 2)
    case "C":
        cup.swapAt(0, 3)
    case "D":
        cup.swapAt(1, 2)
    case "E":
        cup.swapAt(1, 3)
    case "F":
        cup.swapAt(2, 3)
    default:
        print("잘못됨")
    }
}

print(cup.firstIndex(of: cup.min()!)! + 1)
print(cup.firstIndex(of: cup.max()!)! + 1)
