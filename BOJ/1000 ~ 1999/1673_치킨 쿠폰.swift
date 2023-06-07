while let input = readLine()?.split(separator: " ").map { Int($0)! } {
    let n = input[0]
    let k = input[1]
    var answer = n
    var coupon = n
    while coupon >= k {
        let count = coupon / k
        coupon %= k
        answer += count
        coupon += count
    }
    print(answer)
}
