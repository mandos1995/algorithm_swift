import Foundation

func solution(_ my_string:String, _ is_prefix:String) -> Int {
    return my_string.hasPrefix(is_prefix) ? 1 : 0
}
