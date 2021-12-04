func solution(_ x:Int) -> Bool {
    var sum = 0
    for i in String(x) {
        sum += Int(String(i)) ?? 0
    }
    if x % sum == 0 {
        return true
    } else {
        return false
    }
}
