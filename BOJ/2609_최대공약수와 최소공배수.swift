let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]

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

print(gcd(n, m))
print(lcm(n, m))
