import Foundation

func solution(_ my_string:String) -> String {
    return my_string.filter { !["a", "e", "i", "o", "u"].contains($0) }
}
