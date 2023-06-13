import Foundation

func solution(_ myStr:String) -> [String] {
    let answer = myStr.components(separatedBy: ["a", "b", "c"]).filter { !$0.isEmpty }
    return answer.isEmpty ? ["EMPTY"] : answer
}
