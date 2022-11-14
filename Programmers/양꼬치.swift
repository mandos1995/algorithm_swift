import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    return n * 12_000 + k * 2_000 - (n / 10) * 2_000
}
