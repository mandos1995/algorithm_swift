import Foundation

func solution(_ myString: String, _ indices:[Int]) -> String {
    return String(myString.enumerated().filter { !indices.contains($0.offset) }.map { $0.element })
}
