import Foundation

func solution(_ my_string:String) -> [String] {
    return my_string.split { $0 == " " }.map { String($0) }
}
