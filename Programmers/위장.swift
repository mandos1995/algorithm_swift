import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dict: [String: [String]] = [:]
    var answer: Int = 1
    
    for c in clothes {
        if dict[c[1]] == nil {
            dict[c[1]] = [c[0]]
        } else {
            dict[c[1]]!.append(c[0])
        }
    }
    
    for (key, value) in dict {
        answer *= (value.count + 1)
    }
    
    return answer - 1
}
