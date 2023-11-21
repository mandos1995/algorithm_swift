import Foundation

func solution(_ lines:[[Int]]) -> Int {
    var visited = [Int](repeating: 0, count: 201)
    var answer = 0
    for line in lines {
        let s = line[0] + 100
        let e = line[1] + 100
        for i in s..<e { visited[i] += 1 }
    }
    return visited.filter { $0 > 1 }.count
}
