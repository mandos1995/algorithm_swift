let expression = readLine()!.split(separator: "-")
var answer = 0

for i in expression[0].split(separator: "+") {
    answer += Int(i)!
}

for i in expression[1...] {
    for j in i.split(separator: "+") {
        answer -= Int(j)!
    }
}

print(answer)
