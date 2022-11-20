func gcd(_ n: Int, _ m: Int) -> Int {
    if m == 0 {
        return n
    } else {
        return gcd(m, n % m)
    }
}

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var max = 0
    for i in 0..<input.count {
        for j in i + 1..<input.count {
            if max <= gcd(input[i], input[j]) {
                max = gcd(input[i], input[j])
            }
        }
    }
    print(max)
}
