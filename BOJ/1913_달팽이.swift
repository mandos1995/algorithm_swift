let n = Int(readLine()!)!
let target = Int(readLine()!)!
var table = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
var current = n * n
var index = 0
let dx = [0, 1, 0, -1]
let dy = [1, 0, -1, 0]
var x = 0
var y = 0
var d = 0

while current > 0 {
    table[y][x] = current
    if !isVaildCoord(y: y + dy[d], x: x + dx[d]) {
        d += 1
        d %= 4
    }
    current -= 1
    x += dx[d]
    y += dy[d]
    
}
table.enumerated().forEach { index, t in
    t.enumerated().forEach {
        if $0.element == target {
            x = $0.offset + 1
            y = index + 1
        }
        print($0.element, terminator: " ")
    }
    print()
}
print(y, x)
func isVaildCoord(y: Int, x: Int) -> Bool {
    return (0..<n ~= y && 0..<n ~= x) && (table[y][x] == 0)
}
