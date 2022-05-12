let n = Int(readLine()!)!
func powN(_ n: Int) -> Int {
    var answer = 1
    for _ in 0..<n {
        answer *= 2
    }
    return answer
}

print(powN(n))
