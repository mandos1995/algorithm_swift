// 소수 판별 함수
func is_prime_number(x: Int) -> Bool{
    // 2부터 (x - 1)까지의 모든 수를 확인하며
    for i in 2..<x{
        // x가 해당 수로 나누어떨어진다면
        if x % i == 0{
            return false // 소수가 아님
        }
    }
    return true // 소수
}
print(is_prime_number(x: 4))
print(is_prime_number(x: 7))
