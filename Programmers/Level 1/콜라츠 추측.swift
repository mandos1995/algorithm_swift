func solution(_ num:Int) -> Int {
    var result = 0
    var number = num
    while number > 1 {
        number = number % 2 == 0 ? number / 2 : number * 3 + 1
        result += 1
        if result == 500 {
            result = -1
            break
        }
    }
    return result
}
