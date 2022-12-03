func solution(_ x:Int, _ n:Int) -> [Int64] {
    var result: [Int64] = []
    for i in 1...n {
        result.append(Int64(x * i))
    }
    return result
}
