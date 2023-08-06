let n = Int(readLine()!)!
let str = readLine()!.map { String($0) }
let reverseS = Array(str.reversed())
var answer = ""
for i in 0..<n {
    if str[i] == "?" {
        answer += reverseS[i]
    } else {
        answer += str[i]
    }
}

print(String(answer.map { $0 == "?" ? "a" : $0 }))

