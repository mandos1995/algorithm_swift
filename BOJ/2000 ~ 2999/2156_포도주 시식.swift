let n = Int(readLine()!)!
var array: [Int] = [0]
for _ in 0..<n {
    array.append(Int(readLine()!)!)
}
if n < 3 {
    print(array.reduce(0, +))
} else {
    var cache = [Int](repeating: 0, count: n + 1)
    cache[1] = array[1]
    cache[2] = array[1] + array[2]

    for i in 3...n {
        cache[i] = max(cache[i - 2] + array[i], cache[i - 3] + array[i - 1] + array[i], cache[i - 1])
    }
    print(cache[n])
}
