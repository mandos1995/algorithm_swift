import Foundation
func solution(_ n:Int64) -> Int64 {
    let result = Int64(sqrt(Double(n)))
    return pow(n: result) == n ? pow(n: result + 1) : -1
}

func pow(n: Int64) -> Int64 {
    return n * n
}
