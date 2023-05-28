import Foundation

func solution(_ my_strings:[String], _ parts:[[Int]]) -> String {
    return my_strings.enumerated().reduce("") { $0 + String($1.element.map { $0 }[parts[$1.offset][0]...parts[$1.offset][1]]) }
}

