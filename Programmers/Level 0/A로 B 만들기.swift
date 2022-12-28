import Foundation

func solution(_ before:String, _ after:String) -> Int {
    return before.sorted(by: >) == after.sorted(by: >) ? 1 : 0
}
