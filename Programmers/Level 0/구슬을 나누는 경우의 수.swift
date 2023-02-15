import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    var cache = [[Int]](repeating: [Int](repeating: 0, count: 31), count: 31)
    
    for i in 1...30 {
        cache[i][i] = 1
        cache[i][0] = 1
    }
    
    for i in 2...30 {
        for j in 1..<i {
            cache[i][j] = cache[i - 1][j - 1] + cache[i - 1][j]
        }
    }
    return cache[balls][share]
}
