func solution(_ arr:[Int]) -> [Int] {
    var result = arr
    result.remove(at: result.firstIndex(of: result.min()!)!)
    return result.count == 0 ? [-1] : result
}
