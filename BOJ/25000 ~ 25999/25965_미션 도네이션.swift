func solution() {
    let n = Int(readLine()!)!
    var mission: [[Int]] = []
    var answer = 0
    for _ in 0..<n {
        mission.append(readLine()!.split(separator: " ").map { Int($0)! })
    }
    let kda = readLine()!.split(separator: " ").map { Int($0)! }
    
    for i in 0..<n {
        answer += max(mission[i][0] * kda[0] - mission[i][1] * kda[1] + mission[i][2] * kda[2], 0)
    }
    print(answer)
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }
