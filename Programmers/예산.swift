import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var answer = 0
    var remain = budget
    for i in d.sorted(by: <) {
        if remain - i > -1 {
            remain -= i
            answer += 1
        } else {
            break
        }
    }
    return answer
}
