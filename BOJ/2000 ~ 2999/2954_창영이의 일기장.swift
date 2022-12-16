let str = readLine()!.map { $0 }
var answer = ""
let vowel: [Character] = ["a", "e", "i", "o", "u"]

var i = 0

while i < str.count {
    if vowel.contains(str[i]) {
        answer.append(str[i])
        i += 3
        continue
    }
    answer.append(str[i])
    i += 1
}

print(answer)
