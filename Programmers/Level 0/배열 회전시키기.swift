import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    return direction == "left" ? numbers[1...] + [numbers.first!] : [numbers.last!] + numbers[0..<numbers.count - 2]
}
