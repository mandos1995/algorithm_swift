func permutation<T>(_ elements: [T], _ k: Int) -> [[T]] {
    var result = [[T]]()
    var visited = [Bool](repeating: false, count: elements.count)
    
    func permut(_ now: [T]) {
        if now.count == k {
            result.append(now)
            return
        }
        
        for i in 0..<elements.count {
            if visited[i] == true { continue }
            visited[i] = true
            permut(now + [elements[i]])
            visited[i] = false
        }
    }
    permut([])
    return result
}
let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int($0)! }
var answer = 0
let permutationNumbers = permutation(nums, n)
for num in permutationNumbers {
    var total = 0
    for i in 0..<n - 1 {
        total += abs(num[i] - num[i + 1])
    }
    answer = max(answer, total)
}
print(answer)
