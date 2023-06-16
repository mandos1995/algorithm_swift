import Foundation

func solution(_ myString:String) -> [Int] {
    var answer = [Int](repeating: 0, count: 52)
    myString.forEach { answer[Int($0.asciiValue! - ($0.isUppercase ? 65 : 71))] += 1 }
    return answer
}
