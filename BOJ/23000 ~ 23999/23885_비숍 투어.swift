let input = readLine()!.split(separator: " ").map { Int($0)! }
let startInput = readLine()!.split(separator: " ").map { Int($0)! }
let endInput = readLine()!.split(separator: " ").map { Int($0)! }

let n = input[0], m = input[1]
let startX = startInput[0] - 1, startY = startInput[1] - 1
let endX = endInput[0] - 1, endY = endInput[1] - 1

if startX == endX && startY == endY {
    print("YES")
} else if n == 1 || m == 1{
    print("NO")
} else if startX % 2 == startY % 2 {
    if endX % 2 == endY % 2 {
        print("YES")
    } else {
        print("NO")
    }
} else {
    if endX % 2 != endY % 2 {
        print("YES")
    } else {
        print("NO")
    }
}
