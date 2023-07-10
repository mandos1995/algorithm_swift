var alpha = [Int](repeating: 0, count: 26)
readLine()!.forEach { alpha[Int($0.asciiValue! - 65)] += 1 }
let oddCount = alpha.filter { $0 % 2 == 1 }.count
var answer = ""
if oddCount < 2 {
    for i in 0..<26 {
        answer += String(repeating: String(UnicodeScalar(i + 65)!), count: alpha[i] / 2)
    }
    if oddCount == 1 {
        let oddAlpha = String(UnicodeScalar(Int(alpha.firstIndex { $0 % 2 == 1 }!) + 65)!)
        print(answer + oddAlpha + String(answer.reversed()))
    } else {
        print(answer + String(answer.reversed()))
    }
} else {
    print("I'm Sorry Hansoo")
}
