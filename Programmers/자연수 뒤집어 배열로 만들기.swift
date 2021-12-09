func solution(_ n:Int64) -> [Int] {
    var result: [Int] = []
    for num in String(n).reversed() {
        result.append(Int(String(num))!)
    }
    return result
}
