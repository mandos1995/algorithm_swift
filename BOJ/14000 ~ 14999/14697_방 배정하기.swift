func solution() -> Int {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1], c = input[2], n = input[3]
    
    for i in 0...n / a {
        for j in 0...n / b {
            for k in 0...n / c {
                if i * a + j * b + k * c == n {
                    return 1
                }
            }
        }
    }
    
    return 0
}

print(solution())
