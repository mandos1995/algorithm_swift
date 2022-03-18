import Foundation
var n = Int(readLine()!)!
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map{ Int(String($0))! })
}
var minusOneCount = 0
var zeroCount = 0
var oneCount = 0

func solution(y: Int, x: Int, n: Int) {
    if n == 0 {
        return
    }
    var zero = 0
    var one = 0
    var minusOne = 0
    for y in y..<y + n {
        for x in x..<x + n {
            if graph[y][x] == 0 {
                zero += 1
            }
            if graph[y][x] == 1 {
                one += 1
            }
            if graph[y][x] == -1 {
                minusOne += 1
            }
        }
    }
    if minusOne == n * n {
        minusOneCount += 1
        return
    }
    if zero == n * n {
        zeroCount += 1
        return
    }
    if one == n * n {
        oneCount += 1
        return
    }
    solution(y: y, x: x, n: n / 3)
    solution(y: y, x: x + n / 3, n: n / 3)
    solution(y: y, x: x + (n / 3) * 2, n: n / 3)
    solution(y: y + n / 3, x: x, n: n / 3)
    solution(y: y + n / 3, x: x + n / 3, n: n / 3)
    solution(y: y + n / 3, x: x + (n / 3) * 2, n: n / 3)
    solution(y: y + (n / 3) * 2, x: x, n: n / 3)
    solution(y: y + (n / 3) * 2, x: x + n / 3, n: n / 3)
    solution(y: y + (n / 3) * 2, x: x + (n / 3) * 2, n: n / 3)
}

solution(y: 0, x: 0, n: n)
print(minusOneCount)
print(zeroCount)
print(oneCount)
