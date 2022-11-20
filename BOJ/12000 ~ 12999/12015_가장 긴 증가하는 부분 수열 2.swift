let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
var cache = [0]

for arr in array {
    if cache.last! < arr {
        cache.append(arr)
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
}

print(cache.count - 1)
