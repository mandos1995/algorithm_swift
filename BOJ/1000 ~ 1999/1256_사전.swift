let input = readLine()!.split(separator: " ").map { Int($0)! }
var n = input[0], m = input[1], k = input[2]
var cache = [[Int]](repeating: [Int](repeating: 0, count: m + 1), count: n + 1)
let INF = 1_000_000_000
for n in 0...n {
    for m in 0...m {
        if n == 0 || m == 0 {
            cache[n][m] = 1
        }
    }
}

for n in 1...n {
    for m in 1...m {
        cache[n][m] = cache[n - 1][m] + cache[n][m - 1] > INF ? INF : cache[n - 1][m] + cache[n][m - 1]
    }
}

var answer = ""
if cache[n][m] < k {
    print(-1)
} else {
    while true {
        if n == 0 || m == 0 {
            for _ in 0..<m {
                answer += "z"
            }
            for _ in 0..<n {
                answer += "a"
            }
            break
        }
        let standard = cache[n - 1][m]
        
        if k <= standard {
            answer += "a"
            n -= 1
        } else {
            answer += "z"
            m -= 1
            k -= standard
        }
    }
    print(answer)
}
