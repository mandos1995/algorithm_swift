func solution(_ n:Int64) -> Int64 {
    let result = String(n).sorted(by: >)
    return Int64(String(result)) ?? 0
}
