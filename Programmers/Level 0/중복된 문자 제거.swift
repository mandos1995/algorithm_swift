import Foundation

func solution(_ my_string:String) -> String {
    var wordSet: Set<Character> = []
    var answer = ""
    my_string.forEach {
        if !wordSet.contains($0) {
            answer += "\($0)"
            wordSet.insert($0)
        }
    }
    return answer
}
