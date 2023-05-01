import Foundation

func solution(_ n:Int, _ control:String) -> Int {
    var answer = n
    for c in control {
        switch c {
        case "w":
            answer += 1
        case "s":
            answer -= 1
        case "d":
            answer += 10
        case "a":
            answer -= 10
        default:
            continue
        }
    }
    return answer
}
