let n = Int(readLine()!)!
var array = readLine()!.split(separator: " ").map { Int($0)! }
var cache = [Int](repeating: 1, count: n + 1)
array.insert(0, at: 0)
if n > 1 {
    for i in 1...n - 1{
        for j in i + 1...n {
            if array[i] < array[j] {
                cache[j] = max(cache[j], cache[i] + 1)
            }
        }
    }
}
print(cache.max()!)
