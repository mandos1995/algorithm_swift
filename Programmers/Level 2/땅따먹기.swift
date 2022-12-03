import Foundation

func solution(_ land:[[Int]]) -> Int{
    var cache = [[Int]](repeating: [Int](repeating: 0, count: 4), count: land.count)
    cache[0] = land[0]
    for y in 1..<land.count {
        for x in 0..<4 {
            cache[y][x] = max(cache[y - 1][(x + 1) % 4], cache[y - 1][(x + 2) % 4], cache[y - 1][(x + 3) % 4])
            cache[y][x] += land[y][x]
        }
    }
    
    return cache.last!.max()!
}
