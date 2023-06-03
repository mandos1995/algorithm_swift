import Foundation

func solution(_ intStrs:[String], _ k:Int, _ s:Int, _ l:Int) -> [Int] {
    return intStrs.map { Int(String($0.map { $0 }[s..<s + l]))! }.filter { $0 > k }
}
