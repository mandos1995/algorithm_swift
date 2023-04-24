let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var coins: [Int] = []
for _ in 0..<n {
    coins.append(Int(readLine()!)!)
}
var cache = [Int](repeating: 0, count: 10001)
cache[0] = 1

for coin in coins {
    if coin <= k {
        for i in coin...k {
            if cache[i] + cache[i - coin] >= 2147483648 {
                cache[i] = 0
                continue
            }
            cache[i] += cache[i - coin]
        }
    }
}

print(cache[k])
