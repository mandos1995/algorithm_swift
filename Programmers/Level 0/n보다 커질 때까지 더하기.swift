import Foundation

func solution(_ numbers:[Int], _ n:Int) -> Int {
    var answer = 0
    for number in numbers where answer <= n {
        answer += number
    }
    return answer
}
