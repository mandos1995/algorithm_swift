let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]

func twoCount(n: Int) -> Int {
    var answer = 0
    var n = n
    while n != 0 {
        n /= 2
        answer += n
    }
    return answer
}

func fiveCount(n: Int) -> Int {
    var answer = 0
    var n = n
    while n != 0 {
        n /= 5
        answer += n
    }
    return answer
}

print(min(twoCount(n: n) - twoCount(n: n - m) - twoCount(n: m), fiveCount(n: n) - fiveCount(n: n - m) - fiveCount(n: m)))
