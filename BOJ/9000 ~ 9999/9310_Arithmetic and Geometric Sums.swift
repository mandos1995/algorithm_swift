while let n = Int(readLine()!), n != 0 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1], c = input[2]
    if b - a == c - b {
        let d = b - a
        print(n * (2 * a + (n - 1) * d) / 2)
    } else {
        let r = b / a
        print(a * ((pow(n, r) - 1) / (r - 1)))
    }
}

func pow(_ n: Int, _ r: Int) -> Int {
    var answer = 1
    for _ in 0..<n {
        answer *= r
    }
    return answer
}
