import Foundation
func dfs(numbers: [Int], n: Int, index: Int, total: Int, target: Int, answer: inout Int) {
    if n == index {
        if total == target {
            answer += 1
        }
        return
    }
    dfs(numbers: numbers, n: n, index: index + 1, total: total + numbers[index], target: target, answer: &answer)
    dfs(numbers: numbers, n: n, index: index + 1, total: total - numbers[index], target: target, answer: &answer)
}

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var answer = 0
    let n = numbers.count
    dfs(numbers: numbers, n: n, index: 0, total: 0, target: target, answer: &answer)
    return answer
}
