let input = readLine()!.split(separator: " ").map { Int($0)! }
let white = input[0]
let black = input[1]
if white == 0 && black == 0 {
    print(0)
} else if white == 0 {
    print(1)
} else if white >= black {
    print(black)
} else if white < black {
    print(white + 1)
}
