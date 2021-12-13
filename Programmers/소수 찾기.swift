import Foundation
func solution(_ n:Int) -> Int {
    var array = [Bool](repeating: true, count: n + 1)
    var count = 0
    // 에라토스테네스의 체 알고리즘
    for i in 2..<Int(sqrt(Double(n)) + 1) { // 2부터 n의 제곱근까지의 모든 수를 확인하며
        if array[i] == true { // i가 소수인 경우 (남은 수인 경우)
            // i를 제외한 i의 모든 배수를 지우기
            var j = 2
            while i * j <= n {
                array[i * j] = false
                j += 1
            }
        }
    }
    for i in 2..<n + 1{
        if array[i]{
            count += 1
        }
    }
    return count
}

