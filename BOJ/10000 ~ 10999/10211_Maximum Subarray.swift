func solution() {
    let n = Int(readLine()!)!
    let array = readLine()!.split(separator: " ").map { Int($0)! }
    var cache = [Int](repeating: 0, count: n)
    cache[0] = array[0]
    for i in 1..<n {
        cache[i] = max(cache[i - 1] + array[i], array[i])
    }
    print(cache.max()!)
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }
