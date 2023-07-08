struct Team {
    let p: Int
    let y: Int
    let s: String
}
var team: [Team] = []

for _ in 0..<3 {
    let input = readLine()!.split(separator: " ").map { String($0) }
    team.append(Team(p: Int(input[0])!, y: Int(input[1])! % 100, s: input[2]))
}

print(team.sorted { $0.y < $1.y }.map { String($0.y) }.reduce("", +))
print(String(team.sorted { $0.p > $1.p }.map { $0.s.first! }))
