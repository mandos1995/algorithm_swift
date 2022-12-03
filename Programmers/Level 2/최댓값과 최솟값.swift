func solution(_ s:String) -> String {
    let num = s.split(separator: " ").map { Int($0)! }
    var answer = "\(num.min()!) \(num.max()!)"
    return answer
}
