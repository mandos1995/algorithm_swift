import Foundation

func solution(_ myString:String) -> [Int] {
    return myString.components(separatedBy: "x").map { String($0).count }
}
