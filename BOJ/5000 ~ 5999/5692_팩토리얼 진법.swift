while true {
    let num = readLine()!
    if num == "0" {
        break
    }
    let nums = Array(num.map { String($0) }.reversed())
    var result = 0
    var i = 1
    for n in nums {
        result += Int(n)! * factorial(i)
        i += 1
    }
    print(result)
}
func factorial(_ n: Int) -> Int {
    var result = 1
    for i in 1...n {
        result *= i
    }
    return result
}
