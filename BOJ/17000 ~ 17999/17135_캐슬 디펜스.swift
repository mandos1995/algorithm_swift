typealias Position = (y: Int, x: Int)
typealias Enemy = (y: Int, x: Int, distance: Int, isDie: Bool)

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1], d = input[2]

var graph: [[Int]] = []

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

var visited = [Bool](repeating: false, count: m)
var archers: [[Position]] = []

func combiArchersPosition(position: [Position], index: Int) {
    if position.count == 3 {
        archers.append(position)
        return
    }
    for i in index..<m {
        if !visited[i] {
            visited[i] = true
            combiArchersPosition(position: position + [(n, i)], index: i)
            visited[i] = false
        }
    }
}
combiArchersPosition(position: [], index: 0)


var enemies: [Enemy] = []
for y in 0..<n {
    for x in 0..<m {
        if graph[y][x] == 1 {
            enemies.append((y, x, -1, false))
        }
    }
}

func getDistance(_ archerPosition: Position, enemy: Enemy) -> Int {
    return abs(archerPosition.y - enemy.y) + abs(archerPosition.x - enemy.x)
}

func play(archers: [Position], enemies: [Enemy]) -> Int {
    var dieCount = 0
    var enemies = enemies
    while !enemies.isEmpty {
        for archer in archers {
            for i in 0..<enemies.count {
                enemies[i].distance = getDistance(archer, enemy: enemies[i])
            }
            enemies = enemies.sorted { $0.distance == $1.distance ? $0.x < $1.x : $0.distance < $1.distance }
            if enemies.first!.distance <= d {
                enemies[0].isDie = true
            }
        }
        // 죽은 숫자 세기
        dieCount += enemies.filter { $0.isDie }.count

        // 죽은애들 제외
        enemies = enemies.filter { !$0.isDie }

        // 살아있는 애들 전진
        enemies = enemies.map { ($0.y + 1, $0.x, -1, false) }
        enemies = enemies.filter { $0.y < n }
    }
    return dieCount
}
var answer = Int.min
for archer in archers {
    answer = max(play(archers: archer, enemies: enemies), answer)
}

print(answer)
