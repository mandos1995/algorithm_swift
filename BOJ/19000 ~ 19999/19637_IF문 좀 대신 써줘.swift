let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var array: [Int] = []
var dict: [Int: String] = [:]

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let name = String(input[0]), score = Int(String(input[1]))!
    if dict[score] == nil {
        dict[score] = name
    }
    array.append(score)
}

for _ in 0..<m {
    let target = Int(readLine()!)!
    var start = 0
    var end = n
    
    while start <= end {
        let mid = (start + end) / 2
        
        if array[mid] < target {
            start = mid + 1
        } else {
            end = mid - 1
        }
    }
    print(dict[array[start]]!)
}
