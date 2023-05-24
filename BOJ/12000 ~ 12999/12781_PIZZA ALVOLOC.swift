typealias Point = (x: Int, y: Int)

func CCW(_ a: Point, _ b: Point, _ c: Point) -> Int {
    let result = (a.x * b.y + b.x * c.y + c.x * a.y) - (a.y * b.x + b.y * c.x + c.y * a.x)
    return result == 0 ? 0 : result > 0 ? 1 : -1
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
var points: [Point] = []
for i in stride(from: 0, to: 8, by: 2) {
    points.append((input[i], input[i + 1]))
}

let ccwValue = [CCW(points[0], points[1], points[2]) * CCW(points[0], points[1], points[3]),
                CCW(points[2], points[3], points[1]) * CCW(points[2], points[3], points[0])]

if ccwValue[0] < 0 && ccwValue[1] < 0 {
    print(1)
} else {
    print(0)
}
