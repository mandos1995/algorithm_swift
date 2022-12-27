import Foundation

func solution(_ n:Int) -> Int {
    var cache = [Int](repeating: 1, count: 10)
    for i in 1...9 {
        cache[i] = (i + 1) * cache[i - 1]
    }
    return cache.filter { $0 <= n }.count
}
