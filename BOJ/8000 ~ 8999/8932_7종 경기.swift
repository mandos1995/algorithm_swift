import Foundation

struct Game {
    let a: Double
    let b: Double
    let c: Double
    let isTrack: Bool
}
let games: [Game] = [Game(a: 9.23076, b: 26.7, c: 1.835, isTrack: true),
                     Game(a: 1.84523, b: 75, c: 1.348, isTrack: false),
                     Game(a: 56.0211, b: 1.5, c: 1.05, isTrack: false),
                     Game(a: 4.99087, b: 42.5, c: 1.81, isTrack: true),
                     Game(a: 0.188807, b: 210, c: 1.41, isTrack: false),
                     Game(a: 15.9803, b: 3.8, c: 1.04, isTrack: false),
                     Game(a: 0.11193, b: 254, c: 1.88, isTrack: true)]
func solution() {
    let p = readLine()!.split(separator: " ").map { Double($0)! }
    var score: Int = 0
    for i in 0..<7 {
        if games[i].isTrack {
            score += Int(games[i].a * pow((games[i].b - p[i]), games[i].c))
        } else {
            score += Int(games[i].a * pow((p[i] - games[i].b), games[i].c))
        }
    }
    print(score)
}

for _ in 0..<Int(readLine()!)! {
    solution()
}
