struct Team {
    let startTeam: [Int]
    let linkTeam: [Int]
}

let n = Int(readLine()!)!
var team: [Team] = []
var graph: [[Int]] = []

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

var visited = [Bool](repeating: false, count: n + 1)

func getLinkTeam(_ array: [Bool]) -> [Int] {
    var answer: [Int] = []
    for i in 0..<n {
        if !visited[i] {
            answer.append(i)
        }
    }
    return answer
}

func backTracking(array: [Int], index: Int) {
    if array.count == n / 2 {
        team.append(Team(startTeam: array, linkTeam: getLinkTeam(visited)))
        return
    }
    
    for i in index..<n {
        if !visited[i] {
            visited[i] = true
            backTracking(array: array + [i], index: i)
            visited[i] = false
        }
        
    }
}
backTracking(array: [], index: 0)

var answer = 101
for t in team {
    var startTeamScore = 0
    var linkTeamScore = 0
    for i in 0..<n / 2 - 1 {
        for j in i + 1..<n / 2 {
            startTeamScore += graph[t.startTeam[i]][t.startTeam[j]]
            startTeamScore += graph[t.startTeam[j]][t.startTeam[i]]
            linkTeamScore += graph[t.linkTeam[i]][t.linkTeam[j]]
            linkTeamScore += graph[t.linkTeam[j]][t.linkTeam[i]]
        }
    }
    answer = min(answer, abs(startTeamScore - linkTeamScore))
}

print(answer)
