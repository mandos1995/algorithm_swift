import Foundation

func solution(_ my_string:String) -> Int {
    return my_string.compactMap { Int(String($0)) }.reduce(0, +)
}
