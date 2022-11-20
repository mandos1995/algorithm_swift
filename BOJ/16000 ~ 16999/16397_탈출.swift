let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], t = input[1], g = input[2]
var visited = [Bool](repeating: false, count: 1000001)
var INF = 1_000_000_000

func transNumber(n: Int) -> Int {
    if n * 2 > 99999 {
        return INF
    } else {
        var arrayN = String(n * 2).map { Int(String($0))! }
        arrayN[0] -= 1
        return Int(arrayN.map { String($0) }.reduce("", +))!
    }
}
func isVaildCoord(x: Int) -> Bool {
    return 0 <= x && x < 100000
}

var queue = [(n, 0)]
var index = 0
var isEscaped = false

while index < queue.count {
    let x = queue[index].0
    let d = queue[index].1
    visited[x] = true
    
    if x == g {
        isEscaped = true
        print(d)
        break
    }
    
    for i in [x + 1, transNumber(n: x)] {
        let nx = i
        let nd = d + 1
        
        if isVaildCoord(x: nx) && !visited[nx] && nd <= t && nx != INF {
            visited[nx] = true
            queue.append((nx, nd))
        }
    }
    index += 1
}

if !isEscaped {
    print("ANG")
}
