for _ in 0..<Int(readLine()!)! {
    let n = Int(readLine()!)!
    var room = [Bool](repeating: true, count: n + 1)
    for i in 2...n {
        var j = 1
        while i * j <= n {
            room[i * j] = !room[i * j]
            j += 1
        }
    }
    var count = 0
    for i in 1...n {
        if room[i] {
            count += 1
        }
    }
    print(count)
}
