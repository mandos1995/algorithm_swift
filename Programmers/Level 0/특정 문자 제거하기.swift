import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
    return my_string.components(separatedBy: letter).joined()
}
