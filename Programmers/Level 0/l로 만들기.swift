import Foundation

func solution(_ myString:String) -> String {
    return myString.map { $0.asciiValue! < 108 ? "l" : String($0) }.joined()
}
