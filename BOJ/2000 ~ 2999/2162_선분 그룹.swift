typealias Point = (x: Int, y: Int)

struct Line {
    let s: Point
    let e: Point
}

func CCW(_ a: Point, _ b: Point, _ c: Point) -> Int {
    let result = (a.x * b.y + b.x * c.y + c.x * a.y) - (a.y * b.x + b.y * c.x + c.y * a.x)
    return result == 0 ? 0 : result > 0 ? 1 : -1
}

let n = Int(readLine()!)!
var lines: [Line] = []
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    lines.append(Line(s: Point(input[0], input[1]), e: Point(input[2], input[3])))
}

var parent = [Int](0..<n)

func find(_ x: Int) -> Int {
    if parent[x] == x {
        return x
    }
    parent[x] = find(parent[x])
    return parent[x]
}

func union(_ a: Int, _ b: Int) {
    let a = find(a)
    let b = find(b)
    
    if a == b {
        return
    }
    if a > b {
        parent[a] = b
    } else {
        parent[b] = a
    }
}

for i in 0..<n - 1 {
    for j in i + 1..<n {
        let ccwValue = [
            CCW(lines[i].s, lines[i].e, lines[j].s) * CCW(lines[i].s, lines[i].e, lines[j].e),
            CCW(lines[j].s, lines[j].e, lines[i].s) * CCW(lines[j].s, lines[j].e, lines[i].e)
        ]
        
        if ccwValue[0] == 0 && ccwValue[1] == 0 {
            var a = lines[i].s, b = lines[i].e
            var c = lines[j].s, d = lines[j].e
            if a > b { swap(&a, &b) }
            if c > d { swap(&c, &d) }
            if a <= d && b >= c {
                union(i, j)
            }
            
        } else if ccwValue[0] <= 0 && ccwValue[1] <= 0 {
            union(i, j)
        }
    }
}

(0..<n).forEach { find($0) }

print(Set(parent).count)
print(Dictionary(parent.map { ($0, 1) }, uniquingKeysWith: +).values.max()!)

