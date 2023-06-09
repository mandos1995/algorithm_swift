import Foundation

func solution(_ myString:String, _ pat:String) -> String {
    let myString = myString.map { $0 }
    var lastIndex = 0
    for i in 0...myString.count - pat.count {
        if String(myString[i..<i + pat.count]) == pat {
            lastIndex = i + pat.count
        }
    }
    return String(myString[..<lastIndex])
}
