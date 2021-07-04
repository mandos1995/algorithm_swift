let input = Int(readLine()!)!

func fibo(n : Int) -> Int {
    if n < 2 {
        return n
    }
    return fibo(n: n - 2) + fibo(n: n - 1)
}
print(fibo(n: input))
