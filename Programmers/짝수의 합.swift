import Foundation

func solution(_ n:Int) -> Int {
    var answer = 0
    for i in 0...n {
        if i % 2 == 0 { answer += i }
    }
    return answer
}
