import Foundation

func solution(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
    return String(my_string.map { $0 }[0..<s]) + overwrite_string + String(my_string.map { $0 }[(s + overwrite_string.count)...])
}
