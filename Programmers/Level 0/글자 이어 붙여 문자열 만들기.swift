import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    return index_list.reduce("") { $0 + my_string.map { String($0) }[$1] }
}
