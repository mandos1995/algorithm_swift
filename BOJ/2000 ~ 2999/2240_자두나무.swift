let input = readLine()!.split(separator: " ").map { Int($0)! }
let t = input[0], w = input[1]
var trees: [Int] = [0]

for _ in 0..<t {
    trees.append(Int(readLine()!)!)
}

var cache = [[[Int]]](repeating: [[Int]](repeating: [Int](repeating: 0, count: w + 2), count: t + 1), count: 3)

for i in 1...t {
    for j in 1...w + 1 {
        if trees[i] == 1 {
            cache[1][i][j] = max(cache[1][i - 1][j], cache[2][i - 1][j - 1]) + 1
            cache[2][i][j] = max(cache[1][i - 1][j - 1], cache[2][i - 1][j])
        } else {
            // 자두는 1번 자두나무 아래에 위치해있기 때문
            if i == 1 && j == 1 {
                continue
            }
            cache[1][i][j] = max(cache[1][i - 1][j], cache[2][i - 1][j - 1])
            cache[2][i][j] = max(cache[1][i - 1][j - 1], cache[2][i - 1][j]) + 1
        }
    }
}

print(cache.flatMap { $0.flatMap { $0 } }.max()!)
