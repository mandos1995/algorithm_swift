func solution(_ seoul:[String]) -> String {
    var idx = 0
    for i in 0..<seoul.count {
        if seoul[i] == "Kim" {
            idx = i
        }
    }
    return "김서방은 \(idx)에 있다"
}
