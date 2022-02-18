import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let firstPerson = [1, 2, 3, 4, 5]
    let secondPerson = [2, 1, 2, 3, 2, 4, 2, 5]
    let thirdPerson = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var pass = [0, 0, 0]
    for i in 0..<answers.count {
        if answers[i] == firstPerson[i % 5] {
            pass[0] += 1
        }
        if answers[i] == secondPerson[i % 8] {
            pass[1] += 1
        }
        if answers[i] == thirdPerson[i % 10] {
            pass[2] += 1
        }
    }
    var result: [Int] = []
    let max = pass.max()!
    switch pass.filter({ $0 == max }).count {
    case 1:
        result.append(pass.firstIndex(of: max)! + 1)
    case 2:
        if pass[0] == max && pass[1] == max {
            result = [1, 2]
        }
        if pass[0] == max && pass[2] == max {
            result = [1, 3]
        }
        if pass[1] == max && pass[2] == max {
            result = [2, 3]
        }
    case 3:
        result = [1, 2, 3]
    default:
        break
    }
    return result
}
