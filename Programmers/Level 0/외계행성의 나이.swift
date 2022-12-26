import Foundation

func solution(_ age:Int) -> String {
    return "\(age)".map { String(UnicodeScalar(Int(String($0))! + 96)!) }.joined()
}
