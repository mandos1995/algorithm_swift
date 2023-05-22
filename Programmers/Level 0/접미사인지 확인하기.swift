import Foundation

func solution(_ my_string:String, _ is_suffix:String) -> Int {
    return my_string.hasSuffix(is_suffix) ? 1 : 0
}
