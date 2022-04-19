let m = Int(readLine()!)!

func gcd(_ n: Int, _ m: Int) -> Int {
    if m == 0 {
        return n
    } else {
        return gcd(m, n % m)
    }
}


func power(b: Int, mod: Int) -> Int {
    if mod == 0 {
        return 1
    }
    if mod == 1 {
        return b
    }
    
    if mod % 2 == 1 {
        return (b * power(b: b, mod: mod - 1)) % 1_000_000_007
    }
    var half = power(b: b, mod: mod / 2)
    half %= 1_000_000_007
    return (half * half) % 1_000_000_007
}

var answer = 0

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var n = input[0], s = input[1]
    let value = gcd(n, s)
    n /= value
    s /= value
    
    answer += (s * power(b: n, mod: 1_000_000_005)) % 1_000_000_007
    answer %= 1_000_000_007
}
print(answer)
