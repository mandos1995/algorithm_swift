import Foundation

func solution(_ str_list:[String], _ ex:String) -> String {
    return str_list.filter { !$0.contains(ex) }.joined()
}
