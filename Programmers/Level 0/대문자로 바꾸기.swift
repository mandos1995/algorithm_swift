import Foundation

func solution(_ myString:String) -> String {
    return myString.map { $0.uppercased() }.joined()
}
