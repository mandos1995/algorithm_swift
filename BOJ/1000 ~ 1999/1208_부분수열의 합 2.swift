let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], s = input[1]
let array = readLine()!.split(separator: " ").map { Int($0)! }

func dfs(from index: Int, to last: Int, arr: inout [Int], sum: Int) {
    if index == last {
        arr.append(sum)
        return
    }
    dfs(from: index + 1, to: last, arr: &arr, sum: sum + array[index])
    dfs(from: index + 1, to: last, arr: &arr, sum: sum)
}

var sumA: [Int] = []
var sumB: [Int] = []

dfs(from: 0, to: n / 2, arr: &sumA, sum: 0)
dfs(from: n / 2, to: n, arr: &sumB, sum: 0)

sumA.removeLast()
sumB.removeLast()

var answer = 0

func binarySearchUpperbound(_ target: Int) -> Int {
    var start = 0
    var end = sumA.count - 1
    
    while start <= end {
        let mid = (start + end) / 2
        
        if sumA[mid] > target {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    return start
}

func binarySearchLowerbound(_ target: Int) -> Int {
    var start = 0
    var end = sumA.count - 1
    
    while start <= end {
        let mid = (start + end) / 2
        
        if sumA[mid] >= target {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    return start
}

answer += sumA.filter { $0 == s }.count
answer += sumB.filter { $0 == s }.count
sumA.sort()

print(sumA)
print(sumB)

for b in sumB {
    let target = s - b
    answer += binarySearchUpperbound(target) - binarySearchLowerbound(target)
}

print(answer)
