func solution(_ n:Int) -> Int {
    var sum = 0
    if n == 0 {
        return 0
    }
    (1...n).forEach {
        sum += n % $0 == 0 ? $0 : 0
        print($0)
    }
    
    return sum
}
print(solution(0))
