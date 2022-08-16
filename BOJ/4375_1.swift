while let n = readLine() {
    var num = 0
    var step = 1
    while true {
        num = num * 10 + 1
        num %= Int(n)!
        if num == 0 {
            print(step)
            break
        }
        step += 1
    }
}
