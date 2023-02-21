let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var figure: [[Int]] = []
var answer = n * m * 2

for _ in 0..<n {
    figure.append(readLine()!.split(separator: " ").map { Int($0)! })
}

for i in 0..<n {
    var left = figure[i].first!
    for j in 0..<m - 1 {
        if figure[i][j] < figure[i][j + 1] {
            left += figure[i][j + 1] - figure[i][j]
        }
    }
    answer += left * 2
}

for i in 0..<m {
    var right = figure[0][i]
    for j in 0..<n - 1 {
        if figure[j][i] < figure[j + 1][i] {
            right += figure[j + 1][i] - figure[j][i]
        }
    }
    answer += right * 2
}
print(answer)
