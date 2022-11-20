let n = Int(readLine()!)!
let nums = [1, 5, 10, 50]
var word: Set<Int> = []
func backtracking(k: Int, sum: Int, start: Int) {
    if k == n {
        word.insert(sum)
        return
    }
    
    for i in start..<4 {
        backtracking(k: k + 1, sum: sum + nums[i], start: i)
    }
}
backtracking(k: 0, sum: 0, start: 0)
print(word.count)
