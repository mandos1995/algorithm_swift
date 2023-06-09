import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var myString = myString
    var answer = 0
    while myString.isEmpty {
        if myString.hasPrefix(pat) {
            answer += 1
        }
        myString = String(myString.dropFirst())
    }
    return answer
}
