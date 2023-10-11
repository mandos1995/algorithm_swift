let input = readLine()!.split(separator: " ").map { Int($0)! }
let p = input[0], q = input[1], s = input[2]
let lcm = p * q / gcd(p, q)
print(s >= lcm ? "yes" : "no")

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    }
    return gcd(b, a % b)
}
