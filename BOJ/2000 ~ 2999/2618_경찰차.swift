let n = Int(readLine()!)!
let w = Int(readLine()!)!

var pathA: [(Int, Int)] = [(1, 1)]
var pathB: [(Int, Int)] = [(n, n)]

var route = [Int](repeating: 0, count: w + 1)

for _ in 0..<w {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let y = input[0], x = input[1]
    pathA.append((y, x))
    pathB.append((y, x))
}

var cache = [[Int]](repeating: [Int](repeating: -1, count: w + 1), count: w + 1)

func getDistance(y1: Int, x1: Int, y2: Int, x2: Int) -> Int {
    return abs(y1 - y2) + abs(x1 - x2)
}

func dfs(a: Int, b: Int) -> Int {
    if a == w || b == w {
        return 0
    }
    
    if cache[a][b] != -1 {
        return cache[a][b]
    }
    
    let nextEvent = max(a, b) + 1
    let dist1 = getDistance(y1: pathA[a].0, x1: pathA[a].1, y2: pathA[nextEvent].0, x2: pathA[nextEvent].1)
    let dist2 = getDistance(y1: pathB[b].0, x1: pathB[b].1, y2: pathB[nextEvent].0, x2: pathB[nextEvent].1)
    
    let route1 = dist1 + dfs(a: nextEvent, b: b)
    let route2 = dist2 + dfs(a: a, b: nextEvent)
    
    cache[a][b] = min(route1, route2)
    
    return cache[a][b]
}

func getRoute(a: Int, b: Int) {
    if a == w || b == w {
        return
    }
    
    let nextEvent = max(a, b) + 1
    let dist1 = getDistance(y1: pathA[a].0, x1: pathA[a].1, y2: pathA[nextEvent].0, x2: pathA[nextEvent].1)
    let dist2 = getDistance(y1: pathB[b].0, x1: pathB[b].1, y2: pathB[nextEvent].0, x2: pathB[nextEvent].1)
    
    if cache[nextEvent][b] + dist1 < cache[a][nextEvent] + dist2 {
        print(1)
        getRoute(a: nextEvent, b: b)
    } else {
        print(2)
        getRoute(a: a, b: nextEvent)
    }
}

print(dfs(a: 0, b: 0))
getRoute(a: 0, b: 0)
