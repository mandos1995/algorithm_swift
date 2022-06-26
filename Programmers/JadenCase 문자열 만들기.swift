func solution(_ s:String) -> String {
    var answer = ""
    var isFirst = true
    for s in s.lowercased() {
        if s == " " {
            answer += " "
            isFirst = true
            continue
        }
        if isFirst {
            answer += String(s.uppercased())
            isFirst = false
            continue
        }
        answer += String(s)
        
    }
    return answer
}
