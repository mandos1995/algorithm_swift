import Foundation

func solution(_ arr:[Int]) -> Int {
    var arr = arr
    var answer = 0
    while transformArray(arr) != arr {
        answer += 1
        arr = transformArray(arr)
        
    }
    return answer
}

func transformArray(_ arr: [Int]) -> [Int] {
    var answer = arr
    for i in 0..<answer.count {
        if answer[i] >= 50 && answer[i] % 2 == 0 {
            answer[i] /= 2
        } else if answer[i] < 50 && answer[i] % 2 == 1 {
            answer[i] = answer[i] * 2 + 1
        }
    }
    return answer
}
