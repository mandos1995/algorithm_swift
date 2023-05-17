import Foundation

func solution(_ strArr:[String]) -> [String] {
    return strArr.enumerated().map { $0.offset % 2 == 0 ? $0.element.lowercased() : $0.element.uppercased() }
}
