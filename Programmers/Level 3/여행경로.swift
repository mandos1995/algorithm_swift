import Foundation

func solution(_ tickets:[[String]]) -> [String] {
    var tickets = tickets.sorted { $0[1] > $1[1] }
    var visited = [Bool](repeating: false, count: tickets.count)
    var route: [String] = ["ICN"]
    var answer: [String] = []
    func dfs(depth: Int) {
        if depth == tickets.count {
            answer = route
            return
        }
        for i in 0..<tickets.count {
            if route.last! == tickets[i][0] && !visited[i] {
                visited[i] = true
                route.append(tickets[i][1])
                dfs(depth: depth + 1)
                route.removeLast()
                visited[i] = false
            }
        }
    }
    dfs(depth: 0)
    return answer
}
