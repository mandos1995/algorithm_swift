import Foundation

func solution(_ quiz:[String]) -> [String] {
    var answer: [String] = []
    for quiz in quiz {
        let q = quiz.components(separatedBy: " = ")
        var result = Int(q[1])!
        if q[0].contains(" - ") {
            let nums = q[0].components(separatedBy: " - ").map { Int($0)! }
            answer.append(nums[0] - nums[1] == result ? "O" : "X")
        } else {
            let nums = q[0].components(separatedBy: " + ").map { Int($0)! }
            answer.append(nums[0] + nums[1] == result ? "O" : "X")
        }
    }
   
    return answer
}
