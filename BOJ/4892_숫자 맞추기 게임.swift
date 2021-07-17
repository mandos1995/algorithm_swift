var i = 1
while true {
    var num = Int(readLine()!)!
    var result = ""
    result += "\(i). "
    if num == 0 {
        break
    }
    num = 3 * num
    if num % 2 == 0 {
        num = num / 2
        result += "even"
    } else {
        num = (num + 1) / 2
        result += "odd"
    }
    num = 3 * num
    num = num / 9
    result += " \(num)"
    print(result)
    i += 1
}
