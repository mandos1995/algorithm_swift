import Foundation

func solution(_ n:Int) -> Int {
    return Int(String(String(n, radix: 3).reversed()),radix: 3)!
}
