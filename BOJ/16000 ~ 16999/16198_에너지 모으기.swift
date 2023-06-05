let n = Int(readLine()!)!
var array = readLine()!.split(separator: " ").map { Int($0)! }
var answer = 0
func dfs(c: Int, array: inout [Int], value: Int) {
    if c == n - 2 {
        answer = max(answer, value)
        return
    }
    
    for i in 1..<array.count - 1 {
        let removed = array.remove(at: i)
        dfs(c: c + 1, array: &array, value: value + array[i - 1] * array[i])
        array.insert(removed, at: i)
    }
}

dfs(c: 0, array: &array, value: 0)
print(answer)
