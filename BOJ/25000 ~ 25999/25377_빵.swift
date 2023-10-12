let INF = Int.max
var answer = INF

for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x = input[0], y = input[1]
    if x <= y { answer = min(answer, y) }
}

print(answer == INF ? -1 : answer)

