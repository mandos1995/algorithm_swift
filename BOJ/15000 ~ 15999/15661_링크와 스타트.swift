struct Team {
    let start: [Int]
    let link: [Int]
}

let n = Int(readLine()!)!
var graph: [[Int]] = []
var team: [Team] = []

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

var visited = [Bool](repeating: false, count: n)

func getTeam(index: Int, startTeam: [Int], k: Int) {
    if startTeam.count == k {
        let linkTeam = visited.enumerated().filter { !$0.element }.map { $0.offset }
        team.append(Team(start: startTeam, link: linkTeam))
        return
    }

    for i in index..<n {
        if !visited[i] {
            visited[i] = true
            getTeam(index: i, startTeam: startTeam + [i], k: k)
            visited[i] = false
        }
    }
}

for i in 1...n / 2 {
    getTeam(index: 0, startTeam: [], k: i)
}

func getScore(scores: [Int]) -> Int {
    let scoreCount = scores.count
    if scoreCount == 1 {
        return 0
    }
    var score = 0
    for i in 0..<scoreCount - 1 {
        for j in i + 1..<scoreCount {
            score += graph[scores[i]][scores[j]]
            score += graph[scores[j]][scores[i]]
        }
    }
    return score
}


var answer = Int.max

for t in team {
    answer = min(answer, abs(getScore(scores: t.start) - getScore(scores: t.link)))
}

print(answer)
