let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
let nums = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)
var result = ""
func backtracking(index: Int, answer: String) {
    if index == m {
        result += answer + "\n"
        return
    }
    
    for i in 0..<n {
        backtracking(index: index + 1, answer: answer + "\(nums[i]) ")
    }
}

backtracking(index: 0, answer: "")
print(result)
