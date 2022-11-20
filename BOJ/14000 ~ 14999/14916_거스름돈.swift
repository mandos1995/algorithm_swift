var n = Int(readLine()!)!
var count = 0
if n < 5 && n % 2 == 1 {
    print(-1)
} else {
    count += n / 5
    n = n % 5
    count += n / 2
    n = n % 2
    if n != 0 {
        count -= 1
        n = n + 5
        count += n / 2
        n = n % 2
    }
    print(count)
}
