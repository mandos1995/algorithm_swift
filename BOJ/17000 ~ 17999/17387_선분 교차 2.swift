typealias Point = (x: Double, y: Double)

func CCW(_ a: Point, _ b: Point, _ c: Point) -> Int {
    let result = (a.x * b.y + b.x * c.y + c.x * a.y) - (a.y * b.x + b.y * c.x + c.y * a.x)
    return result == 0 ? 0 : result > 0 ? 1 : -1
}

let L1 = readLine()!.split(separator: " ").map { Double($0)! }
let L2 = readLine()!.split(separator: " ").map { Double($0)! }

var a = Point(x: L1[0], y: L1[1])
var b = Point(x: L1[2], y: L1[3])
var c = Point(x: L2[0], y: L2[1])
var d = Point(x: L2[2], y: L2[3])

let ccwValue = [CCW(a, b, c) * CCW(a, b, d), CCW(c, d, a) * CCW(c, d, b)]

if ccwValue[0] == 0 && ccwValue[1] == 0 {
    if a > b { swap(&a, &b) }
    if c > d { swap(&c, &d) }
    
    if a <= d && b >= c {
        print(1)
    } else {
        print(0)
    }
} else if ccwValue[0] <= 0 && ccwValue[1] <= 0  {
    print(1)
} else {
    print(0)
}
