import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let div = gcd(a, b)
    let b = b / div
    
    for prime in makePrimeNumber() {
        if b % prime == 0 {
            if prime != 2 && prime != 5 {
                return 2
            }
        }
    }
    return 1
}

func makePrimeNumber() -> [Int] {
    var isPrime = [Bool](repeating: true, count: 1001)
    for i in 2..<Int(sqrt(1000) + 1) {
        if isPrime[i] {
            var j = 2
            while i * j <= 1000 {
                isPrime[i * j] = false
                j += 1
            }
        }
    }
    return isPrime.enumerated().filter { $0.element && $0.offset > 1 }.map { $0.offset }
}

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    }
    return gcd(b, a % b)
}
