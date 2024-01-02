var n = Int(readLine()!)!
func pow(_ n: Int) -> Int {
    var n = "\(n)".map { Int(String($0))! }
    var answer = 0
    for n in n {
        answer += n * n
    }
    return answer
}
var set: Set<Int> = []
while true {
    if n == 1 {
        print("HAPPY")
        break
    }
    if n == 4 {
        print("UNHAPPY")
        break
    }
    n = pow(n)
}
