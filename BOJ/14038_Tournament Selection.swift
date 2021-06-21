var game = [String](repeating: "", count: 6)
for i in 0..<game.count{
    game[i] = readLine()!
}
var sum = 0
for i in 0..<game.count{
    if game[i] == "W"{
        sum += 1
    }
}
switch sum {
case 5, 6:
    print(1)
case 3, 4:
    print(2)
case 2, 1:
    print(3)
default:
    print(-1)
}
