let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var cache = [[Int]](repeating: [Int](repeating: 0, count: k + 1), count: n + 1)
var backpack: [(Int, Int)] = [(0, 0)]
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let w = input[0], v = input[1]
    backpack.append((w, v))
}

for n in 1...n {
    for k in 1...k {
        if backpack[n].0 <= k {
            cache[n][k] = max(backpack[n].1 + cache[n - 1][k - backpack[n].0], cache[n - 1][k])
            continue
        }
        cache[n][k] = cache[n - 1][k]
    }
}

print(cache.flatMap { $0 }.max()!)
