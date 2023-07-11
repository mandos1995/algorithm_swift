func bigAdd(_ s1: String, _ s2: String) -> String {
    var s1 = s1, s2 = s2
    var carry = 0
    var result = ""
    
    while !(s1.isEmpty && s2.isEmpty) {
        let s1Last = Int(String(s1.popLast() ?? "0"))!
        let s2Last = Int(String(s2.popLast() ?? "0"))!
        
        let sum = s1Last + s2Last + carry
        carry = sum / 10
        result += "\(sum % 10)"
    }
    if carry != 0 { result += "1" }
    return String(result.reversed())
}

let n = Int(readLine()!)!
var f = [String](repeating: "1", count: n + 1)

if n < 3 {
    print(f[n])
} else {
    for i in 3...n {
        f[i] = bigAdd(f[i - 1], f[i - 2])
    }
    print(f[n])
}
