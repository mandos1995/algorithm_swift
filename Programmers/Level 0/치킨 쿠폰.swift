import Foundation

func solution(_ chicken:Int) -> Int {
    var chicken = chicken
    var answer = 0
    while chicken > 9 {
        var cupon = chicken / 10
        answer += cupon
        chicken %= 10
        chicken += cupon
    }
    return answer
}
