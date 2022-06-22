import Foundation

func solution(_ numbers:[Int]) -> String {
    let numbersToString = numbers.sorted { Int("\($0)\($1)")! > Int("\($1)\($0)")! }.map { String($0) }
    return numbersToString[0] == "0" ? "0" : numbersToString.reduce("", +)
}
