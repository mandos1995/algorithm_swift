import Foundation

let array = readLine()!.split(separator: " ").map { Double($0)! }
var permutationArrays: [[Double]] = []
var visited = [Bool](repeating: false, count: 8)
func dfs(n: Int, nums: [Double]) {
    if n == 8 {
        permutationArrays.append(nums)
        return
    }
    for i in 0..<8 {
        if !visited[i] {
            visited[i] = true
            dfs(n: n + 1, nums: nums + [array[i]])
            visited[i] = false
        }
    }
}

dfs(n: 0, nums: [])
var answer = 0
for arr in permutationArrays {
    var isSuccess = true
    for i in 0..<8 {
        if !(arr[i] * arr[(i + 2) % 8] * sqrt(2) <= arr[(i + 1) % 8] * (arr[i] + arr[(i + 2) % 8])) {
            isSuccess = false
            break
        }
    }
    answer += isSuccess ? 1 : 0
}

print(answer)
