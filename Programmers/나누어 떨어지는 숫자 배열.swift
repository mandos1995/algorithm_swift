func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    return arr.filter { $0 % divisor == 0 }.sorted().count == 0 ? [-1] : arr.filter { $0 % divisor == 0 }.sorted()
}
