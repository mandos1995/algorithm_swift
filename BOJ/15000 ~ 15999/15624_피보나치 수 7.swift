func fibo(n: Int) -> Int {
    if n == 0 || n == 1 {
        return n
    }
    var num: [Int] = [Int](repeating: 0, count: n + 1)
    num[0] = 0
    num[1] = 1
    for i in 2...n {
        num[i] = num[i - 1] % 1000000007 + num[i - 2] % 1000000007
    }
    return num[n] % 1000000007
}

print(fibo(n: Int(readLine()!)!))
