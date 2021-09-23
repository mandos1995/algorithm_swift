while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var (a, b, c, d) = (input[0], input[1], input[2], input[3])
    var count = 0
    if a == 0 && b == 0 && c == 0 && d == 0 {
        break
    } else {
        while true {
            if a == b && b == c && c == d {
                break
            } else {
                let temp = a
                a = abs(a - b)
                b = abs(b - c)
                c = abs(c - d)
                d = abs(d - temp)
                count += 1
            }
        }
    }
    print(count)
}
