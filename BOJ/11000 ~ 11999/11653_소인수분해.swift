let n = Int(readLine()!)!

func devideNumber(_ n: Int) {
    if n == 1 {
        return
    }
    for i in 2...n {
        if n % i == 0 {
            print(i)
            devideNumber(n / i)
            break
        }
    }
}

if n != 1 {
    devideNumber(n)
}
