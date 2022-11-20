let n = Int(readLine()!)!
let INF = 1_000_000_000
var house: [[Int]] = []
for _ in 0..<n {
    house.append(readLine()!.split(separator: " ").map { Int($0)! })
}
var answer = INF
for i in 0..<3 {
    var cache = [[Int]](repeating: [Int](repeating: INF, count: 3), count: n)
    cache[0][i] = house[0][i]
    
    for j in 1..<n {
        cache[j][0] = house[j][0] + min(cache[j - 1][1], cache[j - 1][2])
        cache[j][1] = house[j][1] + min(cache[j - 1][0], cache[j - 1][2])
        cache[j][2] = house[j][2] + min(cache[j - 1][0], cache[j - 1][1])
    }
    
    for k in 0..<3 {
        if i == k {
            continue
        }
        answer = min(cache[n - 1][k], answer)
    }
}
print(answer)
