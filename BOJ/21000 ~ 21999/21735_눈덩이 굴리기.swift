let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
let array = [0] + readLine()!.split(separator: " ").map { Int($0)! }
var answer = 0
func dfs(i: Int, time: Int, size: Int) {
    if time > m {
        return
    }
    
    answer = max(answer, size)
    
    if i + 1 <= n {
        dfs(i: i + 1, time: time + 1, size: size + array[i + 1])
    }
    if i + 2 <= n {
        dfs(i: i + 2, time: time + 1, size: size / 2 + array[i + 2])
    }
}

dfs(i: 0, time: 0, size: 1)
print(answer)
