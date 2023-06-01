import Foundation

func solution(_ myString:String) -> [String] {
    return myString.split { $0 == "x" }.map { String($0) }.sorted()
}
