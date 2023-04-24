func solution() {
    let n = Int(readLine()!)!
    let coins = [0] + readLine()!.split(separator: " ").map { Int($0)! }
    let m = Int(readLine()!)!
    var cache = [Int](repeating: 0, count: m + 1)
    cache[0] = 1
    for i in 1...n {
        if coins[i] <= m {
            for j in coins[i]...m {
                cache[j] += cache[j - coins[i]]
            }
        }
    }
    print(cache[m])
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }
