func transBinary(n: Int) {
    if n == 1 {
        print(n, terminator: "")
        return
    } else {
        transBinary(n: n / 2)
        print(n % 2, terminator: "")
    }
}
transBinary(n: Int(readLine()!)!)
