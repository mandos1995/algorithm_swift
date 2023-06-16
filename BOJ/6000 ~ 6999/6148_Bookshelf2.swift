let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], b = input[1]
var cows: [Int] = []
var answer = b

for _ in 0..<n { cows.append(Int(readLine()!)!) }

func dfs(s: Int, i: Int) {
    if i == n {
        if s - b >= 0 {
            answer = min(answer, s - b)
        }
        return
    }
    dfs(s: s + cows[i], i: i + 1)
    dfs(s: s, i: i + 1)
}

dfs(s: 0, i: 0)

print(answer)
