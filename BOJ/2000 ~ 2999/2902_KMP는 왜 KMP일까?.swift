let kmp = readLine()!.split(separator: "-").map { String($0).map { String($0) } }
var answer = ""
for k in kmp {
    answer += k[0]
}
print(answer)
