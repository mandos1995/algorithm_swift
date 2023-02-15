import Foundation

func solution(_ s:String) -> Int {
    var string = s.split(separator: " ").map { String($0) }
    for (i, str) in string.enumerated() {
        if str == "Z" {
            string[i - 1] = " "
        }
    }
    return string.compactMap { Int($0) }.reduce(0, +)
}
