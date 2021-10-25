while true {
    let str = readLine()!
    if str == "#" {
        break
    }
    var step = 0
    var sum = 0
    for i in str {
        step += 1
        if i == " " {
            continue
        } else {
            sum += (Int(i.asciiValue!) - 64) * step
        }
    }
    print(sum)
}
