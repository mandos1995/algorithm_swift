let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
let array = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)

var visited: Set<Int> = []
var result: [Int] = []

func backTracking(nums: inout [Int], index: Int) {
    if index == m {
        print(nums.map { String($0)}.joined(separator: " "))
        return
    }
    
    for arr in array {
        if !visited.contains(arr) {
            nums.append(arr)
            visited.insert(arr)
            backTracking(nums: &nums, index: index + 1)
            nums.removeLast()
            visited.remove(arr)
        }
    }
}
backTracking(nums: &result, index: 0)
