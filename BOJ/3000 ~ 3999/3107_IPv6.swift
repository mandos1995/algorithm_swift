import Foundation
var IPv6 = readLine()!.components(separatedBy: ":").map { String($0) }
var answer = [String](repeating: "", count: 8)
var end = 0
if IPv6.count != 8 {
    var newValue: [String] = []
    var flag = false
    for i in 0..<IPv6.count {
        if IPv6[i].isEmpty && !flag {
            let count = 8 - IPv6.filter { !$0.isEmpty }.count
            end = i + count
            newValue.append(contentsOf: [String](repeating: "0000", count: count))
            flag = true
        } else {
            newValue.append(IPv6[i])
        }
        
    }
    newValue = newValue.filter { !$0.isEmpty }
    
    for i in 0..<8 {
        answer[i] += String(repeating: "0", count: 4 - newValue[i].count) + newValue[i]
    }
} else {
    for i in 0..<8 {
        answer[i] += String(repeating: "0", count: 4 - IPv6[i].count) + IPv6[i]
    }
}
print(answer.joined(separator: ":"))
