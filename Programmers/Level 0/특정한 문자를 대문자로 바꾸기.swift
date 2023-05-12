import Foundation

func solution(_ my_string:String, _ alp:String) -> String {
    return my_string.map { String($0) == alp ? $0.uppercased() : $0.lowercased() }.joined()
}
