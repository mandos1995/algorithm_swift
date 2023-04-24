let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
let memory = [0] + readLine()!.split(separator: " ").map { Int($0)! }
let cost = [0] + readLine()!.split(separator: " ").map { Int($0)! }
let totalCost = cost.reduce(0, +)

var cache = [[Int]](repeating: [Int](repeating: 0, count: totalCost + 1), count: n + 1)

for i in 1...n {
    for j in 0...totalCost {
        cache[i][j] = cache[i - 1][j]
        if cost[i] <= j {
            cache[i][j] = max(cache[i][j], cache[i - 1][j - cost[i]] + memory[i])
        }
    }
}

print(cache[n].firstIndex { $0 >= m }!)
