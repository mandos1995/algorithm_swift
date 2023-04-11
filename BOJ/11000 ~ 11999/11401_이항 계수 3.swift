let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
let MOD = 1_000_000_007

func factorial(n: Int) -> Int {
    var answer = 1
    if n < 2 {
        return answer
    }
    
    for i in 1...n {
        answer *= i
        answer %= MOD
    }
    return answer
}

func pow(n: Int, k: Int) -> Int {
    if k == 0 {
        return 1
    }
    if k == 1 {
        return n
    }
    
    if k % 2 != 0 {
        return n * pow(n: n, k: k - 1) % MOD
    }
    
    let half = pow(n: n, k: k / 2) % MOD
    return half * half % MOD
}

let top = factorial(n: n)
let bottom = factorial(n: n - k) * factorial(n: k) % MOD
print(top * pow(n: bottom, k: MOD - 2) % MOD)
