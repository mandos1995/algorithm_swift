let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var visited = [Bool](repeating: false, count: n + 1)
var result: [Int] = []
func backtracking(nums: [Int], index: Int) {
    if index == m {
        print(result.map { String($0)}.joined(separator: " "))
        return
    }
    for i in 1...n {
        if !visited[i] {
            visited[i] = true
            result.append(i)
            backtracking(nums: result, index: index + 1)
            visited[i] = false
            result.removeLast()
        }
    }
}
backtracking(nums: [], index: 0)
