let n = Int(readLine()!)!
let k = Int(readLine()!)!
var nums: [String] = []
for _ in 0..<n {
    nums.append(String(readLine()!))
}
var visit = [Bool](repeating: false, count: n)
var result: [String] = []
func dfs(data: [String], curIdx: Int, curCnt: Int, targetCnt: Int, answer: String) {
    if curCnt == targetCnt {
        result.append(answer)
        return
    }
    
    for i in 0..<data.count {
        if !visit[i] {
            visit[i] = true
            dfs(data: data, curIdx: i, curCnt: curCnt + 1, targetCnt: targetCnt, answer: answer + data[i])
            visit[i] = false
        }
    }
}
dfs(data: nums, curIdx: 0, curCnt: 0, targetCnt: k, answer: "")
print(Set(result).count)
