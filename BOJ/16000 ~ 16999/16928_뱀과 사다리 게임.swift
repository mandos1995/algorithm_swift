let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var elevator = [Int](repeating: 0, count: 101)
for _ in 0..<n + m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    elevator[a] = b
}

var queue = [(1, 0)]
var index = 0
var answer = 101
var visited = [Bool](repeating: false, count: 101)
while index < queue.count {
    let num = queue[index].0
    let d = queue[index].1
    visited[num] = true
    if num == 100 {
        answer = min(answer, d)
        index += 1
        continue
    }
    for i in 1...6 {
        var x = num + i
        if x > 100 {
            continue
        }
        if elevator[x] != 0 {
            x = elevator[x]
        }
        if !visited[x] {
            visited[x] = true
            queue.append((x, d + 1))
        }
    }
    index += 1
}

print(answer)
