let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
var cache = [0]

for i in 0..<n {
    if cache.last! < array[i] {
        cache.append(array[i])
        continue
    }
    var start = 0
    var end = cache.count - 1
    
    while start <= end {
        let mid = (start + end) / 2
        
        if cache[mid] < array[i] {
            start = mid + 1
        } else {
            end = mid - 1
        }
    }
    cache[start] = array[i]
}

print(cache.count - 1)
