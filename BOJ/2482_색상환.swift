let n = Int(readLine()!)!
let k = Int(readLine()!)!
let MOD = 1_000_000_003

var cache = [[Int]](repeating: [Int](repeating: 0, count: 1001), count: 1001)

for i in 1...n {
    cache[i][0] = 1
    cache[i][1] = i
}

if k == 1 {
    print(n)
} else {
    for i in 2...n {
        for j in 2...k {
            cache[i][j] = (cache[i - 2][j - 1] + cache[i - 1][j]) % MOD
        }
        
    }
    print((cache[n - 3][k - 1] + cache[n - 1][k]) % MOD)
}
