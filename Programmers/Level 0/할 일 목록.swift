import Foundation

func solution(_ todo_list:[String], _ finished:[Bool]) -> [String] {
    return zip(todo_list, finished).filter { !$0.1 }.map { $0.0 }
}
