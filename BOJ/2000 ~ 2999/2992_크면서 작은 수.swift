let n = readLine()!.map { $0 }
let count = n.count
var visited = [Bool](repeating: false, count: count)
var nums: [Int] = []
func dfs(num: String) {
    if num.count == count {
        nums.append(Int(num)!)
        return
    }
    
    for i in 0..<count {
        if !visited[i] {
            visited[i] = true
            dfs(num: num + String(n[i]))
            visited[i] = false
        }
    }
}

dfs(num: "")
nums = nums.filter { $0 > Int(String(n))! }.sorted()
print(nums.isEmpty ? 0 : nums.first!)
