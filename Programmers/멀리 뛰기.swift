func solution(_ n:Int) -> Int {
    let MOD = 1234567
    var cache = [Int](repeating: 0, count: 2001)
    cache[1] = 1
    cache[2] = 2
    if n > 2 {
        for i in 3...n {
            cache[i] = cache[i - 1] + cache[i - 2]
            cache[i] %= MOD
        }
    }
    return cache[n]
}
