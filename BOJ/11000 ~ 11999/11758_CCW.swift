let coordinate1 = readLine()!.split(separator: " ").map { Int($0)! }
let x1 = coordinate1[0], y1 = coordinate1[1]
let coordinate2 = readLine()!.split(separator: " ").map { Int($0)! }
let x2 = coordinate2[0], y2 = coordinate2[1]
let coordinate3 = readLine()!.split(separator: " ").map { Int($0)! }
let x3 = coordinate3[0], y3 = coordinate3[1]
var result = (x1 * y2) + (x2 * y3) + (x3 * y1)
result = result - (y1 * x2) - (y2 * x3) - (y3 * x1)

if result > 0 {
    print(1)
} else if result < 0 {
    print(-1)
} else {
    print(0)
}
