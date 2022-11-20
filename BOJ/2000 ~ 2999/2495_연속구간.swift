for _ in 0..<3 {
    var num = readLine()!
    var prev = num.removeFirst()
    var count = 1
    var answer = 1
    num.forEach {
        if $0 == prev {
            count += 1
            answer = max(answer, count)
        } else {
            prev = $0
            count = 1
        }
    }
    
    print(answer)
}
