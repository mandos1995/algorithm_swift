import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    let nums = transRadix(n, k).split(separator: "0").map { Int($0)! }
    var answer = 0
    for num in nums {
        if isPrime(num) {
            answer += 1
        }
    }
    return answer
}

func isPrime(_ n: Int) -> Bool {
    if n < 2 {
        return false
    }
    for i in 2..<Int(sqrt(Double(n)) + 1) {
        if n % i == 0 {
            return false
        }
    }
    return true
}

func transRadix(_ n: Int, _ k: Int) -> String {
    var answer = ""
    var n = n
    while n > k {
       answer += "\(n % k)"
        n /= k
    }
    answer += "\(n)"
    return String(answer.reversed())
}
