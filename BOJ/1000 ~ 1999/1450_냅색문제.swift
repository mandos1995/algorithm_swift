
let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], c = input[1]
let weights = readLine()!.split(separator: " ").map { Int($0)! }
var sumArray1: [Int] = []
var sumArray2: [Int] = []
var answer = 0

func dfs(from i: Int, to j: Int, array: inout [Int], weight: Int) {
    if weight > c {
        return
    }
    if i == j {
        array.append(weight)
        return
    }
    dfs(from: i + 1, to: j, array: &array, weight: weight + weights[i])
    dfs(from: i + 1, to: j, array: &array, weight: weight)
    
}

dfs(from: 0, to: n / 2, array: &sumArray1, weight: 0)
dfs(from: n / 2, to: n, array: &sumArray2, weight: 0)

sumArray1.sort()

func binarySearchUpperbound(_ array: [Int], _ target: Int) -> Int {
    var start = 0
    var end = array.count - 1
    
    while start <= end {
        let mid = (start + end) / 2
        
        if array[mid] > target {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    
    return start
}

for arr in sumArray2 {
    answer += binarySearchUpperbound(sumArray1, c - arr)
}

print(answer)
