let input = Int(readLine()!)!

func factorial(n : Int) -> Int {
    if n == 0 {
        return 1
    }
    return n * factorial(n: n - 1)
}
print(factorial(n: input))
