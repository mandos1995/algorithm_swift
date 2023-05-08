let start = readLine()!.split(separator: ":").map { Int($0)! }
let end = readLine()!.split(separator: ":").map { Int($0)! }
let startTime = start[0] * 60 + start[1]
let endTime = end[0] * 60 + end[1]

var visited = [Bool](repeating: false, count: 1441)

func bfs(start: Int) {
    var queue = [(start, 0)]
    var index = 0
    visited[start] = true
    
    while queue.count > index {
        let time = queue[index].0
        let d = queue[index].1
        if time == endTime {
            print(d)
            break
        }
        for i in [1, 60] {
            let nextTime = (time + i) % 1440
            if !visited[nextTime] {
                visited[nextTime] = true
                queue.append((nextTime, d + 1))
            }
        }
        index += 1
    }
}

bfs(start: startTime)
