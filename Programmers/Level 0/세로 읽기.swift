import Foundation

func solution(_ myString:String, _ m:Int, _ c:Int) -> String {
    return stride(from: c - 1, to: myString.count, by: m).map { myString.map { String($0) }[$0] }.reduce("", +)
}
