for _ in 0..<Int(readLine()!)! {
    let n = Int(readLine()!)!
    var result = 0
    if n > 1 {
        for i in 2...n {
            var num = n
            while num != 0 {
                if num % i == 0 {
                    result += 1
                    num /= i
                } else {
                    break
                }
            }
        }
    }
    print(result)
}
