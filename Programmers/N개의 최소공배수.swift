func solution(_ arr:[Int]) -> Int {
    var n = arr[0]
    for i in 1..<arr.count {
        n = lcm(n, arr[i])
    }
    return n
}

func gcd(_ n: Int, _ m: Int) -> Int {
    if m == 0 {
        return n
    } else {
        return gcd(m, n % m)
    }
}

func lcm(_ n: Int, _ m: Int) -> Int {
    return n * m / gcd(n, m)
}
