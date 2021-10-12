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
    let t = input[0]
    var sum = 0
    
    for i in 1..<t {
        for j in i + 1...t {
            sum += gcd(input[i], input[j])
        }
    }
    print(sum)
    
}
