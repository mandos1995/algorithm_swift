import Foundation

func solution(_ new_id:String) -> String {
    // 1단계
    var newId = new_id.map { Character($0.lowercased()) }
    var answer = ""
    
    // 2단계
    for id in newId {
        if id.isLetter || id.isNumber || ["-", "_", "."].contains(id) {
            answer += String(id)
        }
    }
    newId = answer.map { $0 }
    
    answer = ""
    
    var dotCount = 0
    // 3단계
    for id in newId {
        if id == "." {
            dotCount += 1
        } else {
            if dotCount > 0 {
                answer += "."
                answer += String(id)
                dotCount = 0
            } else {
                answer += String(id)
            }
        }
    }
    if dotCount > 0 {
        answer += "."
    }
    
    
    newId = answer.map { $0 }
    
    // 4단계
    if !newId.isEmpty {
        if newId[0] == "." {
            _ = newId.removeFirst()
        } else if newId[newId.count - 1] == "." {
            _ = newId.removeLast()
        }
    }
    answer = String(newId)
    
    if newId.isEmpty {
        newId = ["a"]
        answer = "a"
    }
    
    if newId.count > 15 {
        answer = String(newId[0...14])
    }
    
    newId = answer.map { $0 }
    
    if newId[newId.count - 1] == "." {
        _ = newId.removeLast()
        answer = String(newId)
    }
    
    while newId.count < 3 {
        newId.append(newId[newId.count - 1])
    }
    
    return String(newId)
}
