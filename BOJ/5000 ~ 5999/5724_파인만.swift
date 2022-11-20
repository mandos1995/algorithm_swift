while true {
    let n = Int(readLine()!)!
    if n == 0 {
        break
    }
    var answer = 0
    for i in 1...n {
        answer += i * i
    }
    print(answer)
}
