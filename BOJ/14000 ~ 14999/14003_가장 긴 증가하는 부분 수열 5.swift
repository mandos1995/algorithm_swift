let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
var cache = [-1_000_000_001]
var idx = [Int](repeating: -1, count: n)
for (index, arr) in array.enumerated() {
    if cache.last! < arr {
        cache.append(arr)
        idx[index] = cache.count - 1
        continue
    }
    
    var start = 0
    var end = cache.count
    
    while start < end {
        let mid = (start + end) / 2
        
        if cache[mid] < arr {
            start = mid + 1
        } else {
            end = mid
        }
    }
    cache[end] = arr
    idx[index] = end
}

var find = cache.count - 1
var answer: [Int] = []
for i in (0..<n).reversed() {
    if find == idx[i] {
        answer.append(array[i])
        find -= 1
    }
}
print(answer.count)
answer.reversed().forEach {
    print($0, terminator: " ")
}
