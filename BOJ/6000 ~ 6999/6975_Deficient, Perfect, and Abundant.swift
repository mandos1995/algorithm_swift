let t = Int(readLine()!)!
for _ in 0..<t {
    let n = Int(readLine()!)!
    solution(n)
}

func solution(_ n: Int) {
    let sum = makeDivisor(n: n).reduce(0, +)
    if sum < n {
        print("\(n) is a deficient number.")
    } else if sum > n {
        print("\(n) is an abundant number.")
    } else {
        print("\(n) is a perfect number.")
    }
    print()
}

func makeDivisor(n: Int) -> [Int] {
    var result: [Int] = []
    for i in 1..<n {
        if n % i == 0 { result.append(i) }
    }
    return result
}
