import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var answer = 0
    var visited = [Bool](repeating: false, count: dungeons.count)
    dfs(k, dungeons, 0, &visited, &answer)
    return answer
}

func dfs(_ k: Int, _ dungeons: [[Int]], _ count: Int, _ visited: inout [Bool], _ answer: inout Int) {
    if answer < count {
        answer = count
    }
    for i in 0..<dungeons.count {
        if k >= dungeons[i][0] && !visited[i] {
            visited[i] = true
            dfs(k - dungeons[i][1], dungeons, count + 1, &visited, &answer)
            visited[i] = false
        }
    }
}
