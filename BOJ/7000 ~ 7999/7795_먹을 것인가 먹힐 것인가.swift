func lowerbound(array: [Int], target: Int) -> Int {
    var start = 0
    var end = array.count
    
    while start < end {
        let mid = (start + end) / 2
        
        if array[mid] < target {
            start = mid + 1
        } else {
            end = mid
        }
    }
    return start
}

func solution() {
    _ = readLine()!.split(separator: " ").map { Int($0)! }
    let a = readLine()!.split(separator: " ").map { Int($0)! }
    let b = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)
    var answer = 0
    for a in a {
        answer += lowerbound(array: b, target: a)
    }
    print(answer)
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }
