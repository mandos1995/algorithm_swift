let n = Int(readLine()!)!
if n < 3 {
    print(n)
} else {
    var prev = 1
    var current = 2
    for _ in 3...n {
        current += prev
        prev = current - prev
        current %= 10
    }
    print(current)
}
