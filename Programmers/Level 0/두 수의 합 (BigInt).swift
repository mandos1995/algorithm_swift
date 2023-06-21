import Foundation

func solution(_ a:String, _ b:String) -> String {
    var a = a, b = b
    var carry = 0
    var answer = ""
    while !(a.isEmpty && b.isEmpty) {
        let sum = Int(String(a.popLast() ?? "0"))! + Int(String(b.popLast() ?? "0"))! + carry
        carry = sum / 10
        answer.append("\(sum % 10)")
    }
    if carry != 0 {
        answer.append("1")
    }
    return String(answer.reversed())
}
