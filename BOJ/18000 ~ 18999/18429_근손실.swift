let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
let a = readLine()!.split(separator: " ").map { Int($0)! }
var answer = 0
var visited = [Bool](repeating: false, count: n)

func backtracking(index: Int, weight: Int) {
    if weight < 500 {
        return
    }
    
    if index == n {
        answer += 1
        return
    }
    
    for i in 0..<n {
        if !visited[i] {
            visited[i] = true
            backtracking(index: index + 1, weight: weight + a[i] - k)
            visited[i] = false
        }
    }
}

backtracking(index: 0, weight: 500)
print(answer)
