let input = readLine()!.split(separator: " ").map { Int($0)! }
var a = input[0], b = input[1]

while true {
    b += a
    if b > 4 {
        print("yt")
        break
    }
    a += b
    if a > 4 {
        print("yj")
        break
    }
}
