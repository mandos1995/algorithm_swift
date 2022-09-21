import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var dict: [Character: Int] = ["R": 0, "T": 0, "C": 0, "F": 0, "J": 0, "M": 0, "A": 0, "N": 0]
    
    for (index, survey) in survey.enumerated() {
        let score = choices[index] - 4
        if score == 0 {
            continue
        }
        if score > 0 {
            dict[survey.last!]! += score
        } else {
            dict[survey.first!]! += (-score)
        }
    }
    var answer = ""
    answer += dict["T"]! > dict["R"]! ? "T" : "R"
    answer += dict["F"]! > dict["C"]! ? "F" : "C"
    answer += dict["M"]! > dict["J"]! ? "M" : "J"
    answer += dict["N"]! > dict["A"]! ? "N" : "A"
    
    return answer
}
