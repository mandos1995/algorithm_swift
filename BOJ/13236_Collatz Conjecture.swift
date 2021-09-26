var n = Int(readLine()!)!
print(n, terminator: " ")
while n != 1 {
    if n % 2 == 0 {
        n = n / 2
        print(n,terminator: " ")
    } else {
        n = 3 * n + 1
        print(n,terminator: " ")
    }
}
