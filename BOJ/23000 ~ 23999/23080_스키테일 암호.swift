let n = Int(readLine()!)!
let password = readLine()!.map { $0 }
var index = 0
var answer = ""
while index < password.count {
    answer += String(password[index])
    index += n
}
print(answer)
