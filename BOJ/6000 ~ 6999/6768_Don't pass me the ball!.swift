import Foundation
func factorial(_ n: Int) -> Int {
    var n = n
    var result = 1
    while n > 1 {
        result *= n
        n -= 1
    }
    return result
}
func permutations(_ n : Int, _ k: Int) -> Int {
    var n = n
    var answer = n
    for _ in 1..<k{
        n -= 1
        answer *= n
    }
    return answer
}
func combinations(_ n : Int, _ k: Int) -> Int {
    return permutations(n, k) / factorial(k)
}
let num = Int(readLine()!)!
print(combinations(num - 1, 3))
