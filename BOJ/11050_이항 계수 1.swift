let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var cache = [[Int]](repeating: [Int](repeating: 0, count: n + 1), count: n + 1)

for y in 1...n {
    for x in 0...n {
        if y == x || x == 0 {
            cache[y][x] = 1
            continue
        }
        
        cache[y][x] = cache[y - 1][x] + cache[y - 1][x - 1]
    }
}
print(cache[n][k])
