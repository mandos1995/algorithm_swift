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

let input = readLine()!.split(separator: " ").map { Int($0)! }
print(lcm(input[0], input[1]))
