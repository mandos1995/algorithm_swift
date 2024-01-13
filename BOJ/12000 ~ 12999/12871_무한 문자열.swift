func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 { return a }
    return gcd(b, a % b)
}

let s = readLine()!
let t = readLine()!
let lcm = s.count * t.count / gcd(s.count, t.count)
var newS = s
var newT = t

for _ in 1..<(lcm / s.count) {
    newS += s
}
for _ in 1..<(lcm / t.count) {
    newT += t
}

print(newS == newT ? 1 : 0)
