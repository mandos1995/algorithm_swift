import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    var result = a + b + c
    if a == b && b == c {
        result *= (pow(a, 2) + pow(b, 2) + pow(c, 2)) * (pow(a, 3) + pow(b, 3) + pow(c, 3))
    }
    if Set([a, b, c]).count == 2 {
        result *= (pow(a, 2) + pow(b, 2) + pow(c, 2))
    }
    return result
}

func pow(_ n: Int, _ c: Int) -> Int {
    var result = 1
    for _ in 0..<c { result *= n }
    return result
}
