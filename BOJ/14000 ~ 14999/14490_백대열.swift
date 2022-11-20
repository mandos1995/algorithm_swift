func gcd(_ n: Int, _ m: Int) -> Int {
    if m == 0 {
        return n
    } else {
        return gcd(m, n % m)
    }
}

let input = readLine()!.split(separator: ":").map { Int($0)! }
let n = input[0], m = input[1]

print("\(n / gcd(n, m)):\(m / gcd(n, m))")
