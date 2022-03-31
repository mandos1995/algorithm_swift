let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], l = input[1], m = input[2]
var fishPosition: [(Int, Int)] = []
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    fishPosition.append((input[0], input[1]))
    
}

var answer = 0
func huntingFish(x: Int, y: Int, dx: Int, dy: Int) {
    var cnt = 0
    for i in 0..<m {
        if y <= fishPosition[i].0 && fishPosition[i].0 <= y + dy && x <= fishPosition[i].1 && fishPosition[i].1 <= x + dx {
            cnt += 1
        }
        answer = max(cnt, answer)
    }
}

for i in 0..<m {
    for j in 0..<m {
        for k in 1..<l / 2 {
            huntingFish(x: fishPosition[i].1, y: fishPosition[j].0, dx: k, dy: l / 2 - k)
        }
    }
}
print(answer)
