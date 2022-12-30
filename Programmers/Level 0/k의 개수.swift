import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    return (i...j).map { String($0) }.reduce("", +).filter { $0 == Character("\(k)") }.count
}
