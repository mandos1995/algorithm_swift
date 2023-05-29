import Foundation

func solution(_ my_string:String) -> [String] {
    return my_string.indices.map { String(my_string[$0...]) }.sorted()
}
