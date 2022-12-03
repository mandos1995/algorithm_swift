import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    return my_string.map {
        var answer = ""
        for _ in 0..<n {
            answer += String($0)
        }
        return answer
    }.reduce("", +)
}
