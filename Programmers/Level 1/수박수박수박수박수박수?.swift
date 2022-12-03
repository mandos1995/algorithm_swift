func solution(_ n:Int) -> String {
    var result = ""
    (0..<n).forEach {
        result = $0 % 2 == 0 ? result + "수" : result + "박"
    }
    return result
}
