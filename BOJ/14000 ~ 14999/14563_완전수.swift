_ = readLine()
let nums = readLine()!.split(separator: " ").map { Int($0)! }
nums.forEach {
    let sum = makeDivisor(num: $0).reduce(0, +)
    if sum == $0 { print("Perfect") }
    else if sum > $0 { print("Abundant") }
    else { print("Deficient") }
}

func makeDivisor(num: Int) -> [Int] {
    var answer: [Int] = []
    for i in 1..<num  {
        if num % i == 0 { answer.append(i) }
    }
    return answer
}
