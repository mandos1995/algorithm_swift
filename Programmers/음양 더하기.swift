import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var result = 0
    for i in 0..<signs.count {
        result = signs[i] == true ? result + absolutes[i] : result - absolutes[i]
    }
    return result
}
