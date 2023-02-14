import Foundation

func solution() {
    let year = Int(readLine()!)!
    let divisors = makeDivisors(year: year)
    if isFullNumber(num: year) {
        for divisor in divisors {
            if isFullNumber(num: divisor) {
                print("BOJ 2022")
                return
            }
        }
    } else {
        print("BOJ 2022")
        return
    }
    print("Good Bye")
}

func isFullNumber(num: Int) -> Bool {
    var divisors: [Int] = []
    for i in 1...Int(sqrt(Double(num))) {
        if num % i == 0 {
            divisors.append(i)
            divisors.append(num / i)
        }
    }
    divisors.sort { $0 < $1 }
    divisors.removeLast()
    return Set(divisors).reduce(0, +) > num
}

func makeDivisors(year: Int) -> [Int] {
    var divisors: [Int] = []
    for i in 1...Int(sqrt(Double(year))) {
        if year % i == 0 {
            divisors.append(i)
            divisors.append(year / i)
        }
    }
    divisors.sort { $0 < $1 }
    divisors.removeLast()
    
    return Array(Set(divisors))
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }
