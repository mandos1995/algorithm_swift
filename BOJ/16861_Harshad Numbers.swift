var n = Int(readLine()!)!
while true {
    var sum = 0
    for str in String(n) {
        sum += Int(String(str))!
    }
    if n % sum == 0 {
        break
    }
    n += 1
}
print(n)
