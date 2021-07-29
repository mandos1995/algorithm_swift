while true {
    var num = readLine()!
    var digitalRoot = num.map { Int(String($0))! }.reduce(0, +)
    if num == "0" {
        break
    }
    while true {
        if String(digitalRoot).count == 1 {
            break
        } else {
            digitalRoot = num.map { Int(String($0))! }.reduce(0, +)
            num = String(digitalRoot)
        }
    }
    print(digitalRoot)
}
