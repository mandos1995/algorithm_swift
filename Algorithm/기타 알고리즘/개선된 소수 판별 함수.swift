import Foundation

// 소수 판별 함수
func is_prime_number(x: Int) -> Bool {
    // 2부터 x의 제곱근까지의 모든 수를 확인하며
    for i in 2..<Int(sqrt(Double(x)) + 1) {
        // x가 해당 수로 나누어 떨어진다면
        if x % i == 0{
            return false
        }
    }
    return true
}

print(is_prime_number(x: 4))
print(is_prime_number(x: 7))
