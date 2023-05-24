typealias Point = (x: Double, y: Double)

func CCW(_ a: Point, _ b: Point, _ c: Point) -> Int {
    let result = (a.x * b.y + b.x * c.y + c.x * a.y) - (a.y * b.x + b.y * c.x + c.y * a.x)
    return result == 0 ? 0 : result > 0 ? 1 : -1
}

func findPoint(_ a: Point, _ b: Point, _ c: Point, _ d: Point) -> Point? {
    let px = (a.x * b.y - a.y * b.x) * (c.x - d.x) - (a.x - b.x) * (c.x * d.y - c.y * d.x);
    let py = (a.x * b.y - a.y * b.x) * (c.y - d.y) - (a.y - b.y) * (c.x * d.y - c.y * d.x);
    let p = (a.x - b.x) * (c.y - d.y) - (a.y - b.y) * (c.x - d.x);
    
    if p == 0 {
        if b == c && a <= c { return b }
        else if a == d && c <= a { return a }
        return nil
    }
    let x = px / p
    let y = py / p
    
    return (x, y)
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
        if let point = findPoint(a, b, c, d) {
            print(point.x, point.y)
        }
    } else {
        print(0)
    }
} else if ccwValue[0] <= 0 && ccwValue[1] <= 0  {
    print(1)
    if let point = findPoint(a, b, c, d) {
        print(point.x, point.y)
    }
} else {
    print(0)
}
