import Foundation

func solution(_ num: Int) {
    if num == 0 {
        return
    }
    var divisors: Set<Int> = []
    
    for i in 1...Int(sqrt(Double(num))) {
        if num % i == 0 {
            divisors.insert(i)
            divisors.insert(num / i)
        }
    }
    divisors.remove(num)
    
    let sum = divisors.reduce(0, +)
    print(num, terminator: " ")
    sum == num ? print("PERFECT") : sum > num ? print("ABUNDANT") : print("DEFICIENT")
}

mainLoop: while true {
    let nums = readLine()!.trimmingCharacters(in: .whitespacesAndNewlines).split(separator: " ").map { Int($0)! }
    for num in nums {
        if num == 0 {
            break mainLoop
        }
        solution(num)
    }
}
