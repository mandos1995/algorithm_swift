let str = readLine()!.map { $0 }
let findStr = readLine()!
var answer = 0
var i = 0
while i <= str.count - findStr.count {
    if String(str[i..<i + findStr.count]) == String(findStr) {
        answer += 1
        i += findStr.count
        continue
    }
    i += 1
}

print(answer)
