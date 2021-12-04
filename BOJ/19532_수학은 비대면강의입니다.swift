let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1], c = input[2], d = input[3], e = input[4], f = input[5]

for x in -999...999 {
    for y in -999...999 {
        if (a * x + b * y == c) && (d * x + e * y == f) {
            print(x, y)
            break
        }
    }
}
