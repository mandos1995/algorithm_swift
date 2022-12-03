import Foundation

func solution(_ numbers:String) -> Int {
    let nums = numbers.map { String($0) }
    let n = nums.count
    var visited = [Bool](repeating: false, count: n)
    var numsArray: [Int] = []
    var answer = 0
    func dfs(number: String) {
        if number != "" {
            numsArray.append(Int(number)!)
        }
        if number.count == n {
            return
        }
        for i in 0..<n {
            if !visited[i] {
                visited[i] = true
                dfs(number: number + nums[i])
                visited[i] = false
            }
        }
    }
    
    dfs(number: "")
    numsArray = Array(Set(numsArray))
    let maxValue = numsArray.max()!
    var isDecimal = [Bool](repeating: true, count: maxValue + 1)

    for i in 2..<Int(sqrt(Double(maxValue)) + 1) {
        if isDecimal[i] {
            var j = 2
            while i * j <= maxValue {
                isDecimal[i * j] = false
                j += 1
            }
        }
    }
    for num in numsArray {
        if num < 2 {
            continue
        }
        if isDecimal[num] {
            answer += 1
        }
    }
    return answer
}
