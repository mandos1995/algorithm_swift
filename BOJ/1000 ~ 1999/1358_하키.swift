import Foundation
let input = readLine()!.split(separator: " ").map { Double($0)! }
let w = input[0], h = input[1], x = input[2], y = input[3], p = input[4]

func isInSquare(x1: Double, y1: Double) -> Bool {
    return (x1 >= x && x1 <= x + w) && (y1 >= y && y1 <= y + h)
}

func getDistance(_ x1: Double, _ y1: Double, _ x2: Double, _ y2: Double) -> Double {
    return sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))
}

func isInCircle(x1: Double, y1: Double) -> Bool {
    return getDistance(x, y + h / 2 , x1, y1) <= h / 2 || getDistance(x + w, y + h / 2, x1, y1) <= h / 2
}

var answer = 0

for _ in 0..<Int(p) {
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    let x = input[0], y = input[1]
    if isInSquare(x1: x, y1: y) || isInCircle(x1: x, y1: y) {
        answer += 1
    }
}
print(answer)
