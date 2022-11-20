var n = Int(readLine()!)!
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.map { Int(String($0))! })
}

func solution(y: Int, x: Int, n: Int) {
    if n == 1 {
        print(graph[y][x],terminator: "")
        return
    }
    var zero = 0
    var one = 0
    for y in y..<y + n {
        for x in x..<x + n {
            if graph[y][x] == 0 {
                zero += 1
            }
            if graph[y][x] == 1 {
                one += 1
            }
        }
    }
    
    if zero == n * n {
        print(0,terminator: "")
        return
    }
    
    if one == n * n {
        print(1,terminator: "")
        return
    }
    print("(",terminator: "")
    solution(y: y, x: x, n: n / 2)
    solution(y: y, x: x + n / 2, n: n / 2)
    solution(y: y + n / 2, x: x, n: n / 2)
    solution(y: y + n / 2, x: x + n / 2, n: n / 2)
    print(")",terminator: "")
}

solution(y: 0, x: 0, n: n)
