let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var visited = [Bool](repeating: false, count: n + 1)
var result: [Int] = []
func backtracking(start:Int, index: Int) {
    if index == m {
        print(result.map { String($0)}.joined(separator: " "))
        return
    }
    for i in start...n {
        if !visited[i] {
            visited[i] = true
            result.append(i)
            backtracking(start: i, index: index + 1)
            visited[i] = false
            result.removeLast()
        }
    }
}
backtracking(start: 1, index: 0)
