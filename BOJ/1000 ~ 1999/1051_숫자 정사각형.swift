let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.map { Int(String($0))! })
}

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<m ~= x
}

func checkSquare(y: Int, x: Int, step: Int, num: Int) -> Bool {
    let dx = [x, x, x + step, x + step]
    let dy = [y, y + step, y, y + step]
    var count = 0
    for i in 0..<4 {
        if isVaildCoord(y: dy[i], x: dx[i]) && graph[dy[i]][dx[i]] == num {
            count += 1
        } else {
            break
        }
    }
    
    return count == 4
}
var answer = 1
for y in 0..<n {
    for x in 0..<m {
        for i in 1...min(n, m) {
            if checkSquare(y: y, x: x, step: i, num: graph[y][x]) {
                answer = max(answer, (i + 1) * (i + 1))
            }
        }
    }
}

print(answer)
