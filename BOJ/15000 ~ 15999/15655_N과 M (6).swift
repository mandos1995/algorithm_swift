let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
let nums = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)
var visited: Set<Int> = []
var answer: [Int] = []

func backtracking(array: inout [Int], index: Int, start: Int) {
    if index == m {
        print(array.map { String($0) }.joined(separator: " "))
        return
    }
    
    for i in start..<n {
        if !visited.contains(nums[i]) {
            visited.insert(nums[i])
            array.append(nums[i])
            backtracking(array: &array, index: index + 1, start: i)
            visited.remove(nums[i])
            array.removeLast()
        }
    }
}

backtracking(array: &answer, index: 0, start: 0)
